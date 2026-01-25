# ScriptCaller - TimeFlow Addon

## Overview
ScriptCaller is a TimeFlow behavior that allows you to call methods on any component from the timeline. This extends TimeFlow's built-in TimeflowEvent with support for multiple parameter types beyond just strings.

**Location:** `TimeFlow Plugin/Core/Addons/Behaviors/ScriptCaller.cs`

## Why Use ScriptCaller?

TimeFlow excels at smooth property interpolation (keyframes), but sometimes you need **discrete, triggered actions**:

- **Start/Stop continuous behaviors** - Like rotation, movement, particle effects
- **Trigger state changes** - Enable/disable features, switch modes
- **Call methods with parameters** - Pass specific values at timeline points
- **Control custom scripts** - Any MonoBehaviour method can be called

## Parameter Types Supported

ScriptCaller supports these parameter types:

| Parameter Type | Use Case | Example Method |
|---|---|---|
| **None** | Methods with no parameters | `StartRotation()` |
| **Float** | Decimal values | `SetIntensity(float value)` |
| **Int** | Whole numbers | `SetColorIndex(int index)` |
| **Bool** | True/false flags | `SetActive(bool state)` |
| **String** | Text values | `PlaySound(string clipName)` |
| **Vector3** | 3D positions/rotations | `MoveToPosition(Vector3 pos)` |

## CRITICAL: Parameter Type MUST Match Method Signature

⚠️ **MOST COMMON MISTAKE:** Setting wrong parameter type!

The Parameter Type dropdown MUST match exactly what the method expects:

### ✅ CORRECT Examples:
```csharp
// Method in script:
public void StartRotation() { ... }

// ScriptCaller setup:
Method Name: StartRotation
Parameter Type: None  ← NO PARAMETERS!
```

```csharp
// Method in script:
public void SetIntensity(float value) { ... }

// ScriptCaller setup:
Method Name: SetIntensity
Parameter Type: Float  ← Takes a float
Float Value: 5.0
```

### ❌ INCORRECT Examples:
```csharp
// Method in script:
public void StartRotation() { ... }

// ScriptCaller setup (WRONG):
Method Name: StartRotation
Parameter Type: Bool  ← ERROR! Method takes NO parameters!
```

**Result:** Warning appears: "Method 'StartRotation' not found on [Component]"

## Setup Instructions

### 1. Add ScriptCaller Component
- In TimeFlow timeline, add component: **Timeflow → Script Caller**
- Or add directly: `Add Component → Timeflow → Script Caller`

### 2. Configure Target
- **Target GameObject:** The GameObject with the script you want to call
- **Target Component (optional):**
  - Leave **EMPTY** to auto-search all components
  - Or manually select specific component for faster execution

### 3. Configure Method
- **Method Name:** Exact name of the method (case-sensitive)
  - Example: `StartRotation` NOT `startRotation`
- **Parameter Type:** Select type that matches method signature
  - **MUST match exactly** or method won't be found!

### 4. Set Parameter Value
The appropriate field appears based on Parameter Type:
- **None:** No field (method takes no parameters)
- **Float:** Float Value field
- **Int:** Int Value field
- **Bool:** Checkbox
- **String:** Text field
- **Vector3:** X, Y, Z fields

### 5. Set Trigger Time
- Set when in the timeline this method should be called
- Use TimeFlow's timeline editor to position the event marker

### 6. Optional Settings
- **Use Reflection:** Keep enabled (more reliable method finding)
- **Trigger Limit:**
  - `0` = Unlimited (triggers every time timeline passes this point)
  - `1` = Once only
  - `2+` = Limited number of times
- **Log When Triggered:** Enable for debugging

## Visual Feedback

The custom inspector provides real-time validation:

### ✅ Green Message (Method Found):
```
✓ Found: ContinuousRotator.StartRotation()
```
Method exists and parameter type matches!

### ⚠️ Yellow Warning (Method Not Found):
```
✗ Method 'StartRotation' not found on Transform
```
**Common causes:**
1. Wrong Parameter Type selected
2. Method name typo/case mismatch
3. Target Component set to wrong component
4. Method is private (must be public)

## Common Use Cases

### Example 1: Continuous Rotation Control
```csharp
// Your script (ContinuousRotator.cs)
public void StartRotation() { ... }
public void StopRotation() { ... }

// ScriptCaller Event 1 (at time 2.0s):
Method Name: StartRotation
Parameter Type: None

// ScriptCaller Event 2 (at time 10.0s):
Method Name: StopRotation
Parameter Type: None
```

### Example 2: Color Cycling with Index
```csharp
// Your script (MaterialColorCycler.cs)
public void SetColorIndex(int index) { ... }

// ScriptCaller Event (at time 5.0s):
Method Name: SetColorIndex
Parameter Type: Int
Int Value: 3
```

### Example 3: Intensity Control
```csharp
// Your script (LightController.cs)
public void SetIntensity(float intensity) { ... }

// ScriptCaller Event (at time 1.0s):
Method Name: SetIntensity
Parameter Type: Float
Float Value: 10.5
```

### Example 4: Enable/Disable Features
```csharp
// Your script (EffectController.cs)
public void SetEmissionEnabled(bool enabled) { ... }

// ScriptCaller Event (at time 3.0s):
Method Name: SetEmissionEnabled
Parameter Type: Bool
Bool Value: ✓ (checked)
```

## Troubleshooting

### "Method not found" Warning

**Check these in order:**

1. **Parameter Type matches method signature?**
   - `public void StartRotation()` → Parameter Type: **None**
   - `public void SetValue(float v)` → Parameter Type: **Float**

2. **Method name spelled correctly?**
   - Case-sensitive: `StartRotation` ≠ `startRotation`

3. **Target Component correct?**
   - Try leaving "Target Component (optional)" **empty** to auto-search
   - If still not found, manually drag the correct component into field

4. **Method is public?**
   - Private methods won't be found
   - Change `private void MyMethod()` → `public void MyMethod()`

5. **Component actually exists on GameObject?**
   - Check Inspector - is the script component attached?

### Method Found But Not Executing

1. **Check Trigger Time**
   - Is timeline actually passing through the trigger point?
   - Use "Log When Triggered" to confirm execution

2. **Check Trigger Limit**
   - Set to `0` for unlimited triggers
   - If set to `1`, it only triggers once

3. **Check Enabled checkbox**
   - ScriptCaller must be enabled

### Test Call Button Not Working

The "🧪 Test Call Method" button calls the method immediately, regardless of timeline position. If it's not working:

1. Method signature mismatch (most common)
2. Component doesn't exist
3. Method has compile errors

Check Unity Console for error messages.

## Technical Details

### How It Works

1. **Reflection-Based Discovery:**
   - ScriptCaller uses C# reflection to find methods by name
   - Checks parameter types to ensure exact match
   - Works with any public method on any component

2. **Auto-Search vs. Manual Target:**
   - **Empty Target Component:** Searches ALL components on GameObject
   - **Specified Target Component:** Only checks that specific component (faster)

3. **Execution:**
   - When timeline reaches trigger time, method is invoked via reflection
   - Parameters are passed based on Parameter Type setting
   - UnityEvent `OnTrigger` also fires for additional functionality

### Inheritance from TimeflowEvent

ScriptCaller extends TimeFlow's built-in `TimeflowEvent` class, so it has all standard event features:
- Trigger time control
- Trigger limits
- UnityEvent callbacks
- Timeline integration

### Namespace Requirements

ScriptCaller is in the `AxonGenesis` namespace to integrate with TimeFlow's architecture. Custom methods being called can be in any namespace.

## Best Practices

1. **Use descriptive Event Names**
   - "Start Rotation at 2s" better than "Event 1"

2. **Clear Target Component when debugging**
   - Auto-search is more reliable for initial setup
   - Set specific component once working for performance

3. **Enable logging during development**
   - "Log When Triggered" helps confirm execution timing

4. **Test with Test Call button first**
   - Verify method works before testing in timeline

5. **Use Parameter Type: None for most simple triggers**
   - Start/Stop methods rarely need parameters
   - Keep it simple when possible

## File Structure

```
TimeFlow Plugin/
└── Core/
    └── Addons/
        ├── Behaviors/
        │   └── ScriptCaller.cs          ← Main behavior script
        └── Editor/
            └── ScriptCallerEditor.cs     ← Custom inspector
```

## Version History

- **v1.0** (2026-01-25): Initial release
  - Support for 6 parameter types
  - Auto-discovery of methods
  - Custom inspector with validation
  - Test call functionality

---

**Created by:** Claude Code
**Date:** 2026-01-25
**For:** TimeFlow Unity Asset Integration

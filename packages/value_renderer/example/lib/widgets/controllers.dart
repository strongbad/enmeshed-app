import 'package:enmeshed_types/enmeshed_types.dart';
import 'package:flutter/widgets.dart';
import 'package:value_renderer/value_renderer.dart';

class Controllers {
  ValueRendererController textInputController = ValueRendererController();
  ValueRendererController integerInputController = ValueRendererController();
  ValueRendererController doubleInputController = ValueRendererController();
  ValueRendererController integerSliderInputController = ValueRendererController();
  ValueRendererController doubleSliderInputController = ValueRendererController();
  ValueRendererController stringDropdownInputController = ValueRendererController();
  ValueRendererController integerDropdownInputController = ValueRendererController();
  ValueRendererController doubleDropdownInputController = ValueRendererController();
  ValueRendererController booleanDropdownInputController = ValueRendererController();
  ValueRendererController stringSegmentedInputController = ValueRendererController();
  ValueRendererController integerSegmentedInputController = ValueRendererController();
  ValueRendererController doubleSegmentedInputController = ValueRendererController();
  ValueRendererController booleanSegmentedInputController = ValueRendererController();
  ValueRendererController stringRadioInputController = ValueRendererController();
  ValueRendererController integerRadioInputController = ValueRendererController();
  ValueRendererController doubleRadioInputController = ValueRendererController();
  ValueRendererController booleanRadioInputController = ValueRendererController();
  ValueRendererController switchInputController = ValueRendererController();
  ValueRendererController checkboxInputController = ValueRendererController();
  ValueRendererController datepickerInputController = ValueRendererController();
  ValueRendererController complexInputController = ValueRendererController();

  String? textInputValue;
  ValueHintsDefaultValueNum? integerInputValue;
  ValueHintsDefaultValueNum? doubleInputValue;
  ValueHintsDefaultValueNum? integerSliderInputValue;
  ValueHintsDefaultValueNum? doubleSliderInputValue;
  ValueHintsDefaultValueString? stringDropdownInputValue;
  ValueHintsDefaultValueNum? integerDropdownInputValue;
  ValueHintsDefaultValueNum? doubleDropdownInputValue;
  ValueHintsDefaultValueBool? booleanDropdownInputValue;
  ValueHintsDefaultValueString? stringSegmentedInputValue;
  ValueHintsDefaultValueNum? integerSegmentedInputValue;
  ValueHintsDefaultValueNum? doubleSegmentedInputValue;
  ValueHintsDefaultValueBool? booleanSegmentedInputValue;
  ValueHintsDefaultValueString? stringRadioInputValue;
  ValueHintsDefaultValueNum? integerRadioInputValue;
  ValueHintsDefaultValueNum? doubleRadioInputValue;
  ValueHintsDefaultValueBool? booleanRadioInputValue;
  bool? switchInputValue;
  bool? checkboxInputValue;
  dynamic datepickerInputValue;
  dynamic complexInputValue;

  Function(String?)? onTextInputValueChanged;
  Function(ValueHintsDefaultValueNum?)? onIntegerInputValueChanged;
  Function(ValueHintsDefaultValueNum?)? onDoubleInputValueChanged;
  Function(ValueHintsDefaultValueNum?)? onIntegerSliderInputValueChanged;
  Function(ValueHintsDefaultValueNum?)? onDoubleSliderInputValueChanged;
  Function(ValueHintsDefaultValueString?)? onStringDropdownInputValueChanged;
  Function(ValueHintsDefaultValueNum?)? onIntegerDropdownInputValueChanged;
  Function(ValueHintsDefaultValueNum?)? onDoubleDropdownInputValueChanged;
  Function(ValueHintsDefaultValueBool?)? onBooleanDropdownInputValueChanged;
  Function(ValueHintsDefaultValueString?)? onStringSegmentedInputValueChanged;
  Function(ValueHintsDefaultValueNum?)? onIntegerSegmentedInputValueChanged;
  Function(ValueHintsDefaultValueNum?)? onDoubleSegmentedInputValueChanged;
  Function(ValueHintsDefaultValueBool?)? onBooleanSegmentedInputValueChanged;
  Function(ValueHintsDefaultValueString?)? onStringRadioInputValueChanged;
  Function(ValueHintsDefaultValueNum?)? onIntegerRadioInputValueChanged;
  Function(ValueHintsDefaultValueNum?)? onDoubleRadioInputValueChanged;
  Function(ValueHintsDefaultValueBool?)? onBooleanRadioInputValueChanged;
  Function(bool?)? onSwitchInputValueChanged;
  Function(bool?)? onCheckboxInputValueChanged;
  Function(dynamic)? onDatepickerInputValueChanged;
  Function(dynamic)? onComplexInputValueChanged;

  Controllers({
    this.onTextInputValueChanged,
    this.onIntegerInputValueChanged,
    this.onDoubleInputValueChanged,
    this.onIntegerSliderInputValueChanged,
    this.onDoubleSliderInputValueChanged,
    this.onStringDropdownInputValueChanged,
    this.onIntegerDropdownInputValueChanged,
    this.onDoubleDropdownInputValueChanged,
    this.onBooleanDropdownInputValueChanged,
    this.onStringSegmentedInputValueChanged,
    this.onIntegerSegmentedInputValueChanged,
    this.onDoubleSegmentedInputValueChanged,
    this.onBooleanSegmentedInputValueChanged,
    this.onStringRadioInputValueChanged,
    this.onIntegerRadioInputValueChanged,
    this.onDoubleRadioInputValueChanged,
    this.onBooleanRadioInputValueChanged,
    this.onSwitchInputValueChanged,
    this.onCheckboxInputValueChanged,
    this.onDatepickerInputValueChanged,
    this.onComplexInputValueChanged,
  }) {
    _setupTextInputController();
    _setupIntegerInputController();
    _setupDoubleInputController();
    _setupIntegerSliderInputController();
    _setupDoubleSliderInputController();
    _setupStringDropdownInputController();
    _setupIntegerDropdownInputController();
    _setupDoubleDropdownInputController();
    _setupBooleanDropdownInputController();
    _setupStringSegmentedInputController();
    _setupIntegerSegmentedInputController();
    _setupDoubleSegmentedInputController();
    _setupBooleanSegmentedInputController();
    _setupStringRadioInputController();
    _setupIntegerRadioInputController();
    _setupDoubleRadioInputController();
    _setupBooleanRadioInputController();
    _setupSwitchInputController();
    _setupCheckboxInputController();
    _setupDatepickerInputController();
    _setupComplexInputController();
  }

  void _setupTextInputController() {
    textInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        textInputValue = textInputController.value;
        onTextInputValueChanged?.call(textInputValue);
      });
    });
  }

  void _setupIntegerInputController() {
    integerInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        integerInputValue = integerInputController.value;
        onIntegerInputValueChanged?.call(integerInputValue);
      });
    });
  }

  void _setupDoubleInputController() {
    doubleInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        doubleInputValue = doubleInputController.value;
        onDoubleInputValueChanged?.call(doubleInputValue);
      });
    });
  }

  void _setupIntegerSliderInputController() {
    integerSliderInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        integerSliderInputValue = integerSliderInputController.value;
        onIntegerSliderInputValueChanged?.call(integerSliderInputValue);
      });
    });
  }

  void _setupDoubleSliderInputController() {
    doubleSliderInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        doubleSliderInputValue = doubleSliderInputController.value;
        onDoubleSliderInputValueChanged?.call(doubleSliderInputValue);
      });
    });
  }

  void _setupStringDropdownInputController() {
    stringDropdownInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        stringDropdownInputValue = stringDropdownInputController.value;
        onStringDropdownInputValueChanged?.call(stringDropdownInputValue);
      });
    });
  }

  void _setupIntegerDropdownInputController() {
    integerDropdownInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        integerDropdownInputValue = integerDropdownInputController.value;
        onIntegerDropdownInputValueChanged?.call(integerDropdownInputValue);
      });
    });
  }

  void _setupDoubleDropdownInputController() {
    doubleDropdownInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        doubleDropdownInputValue = doubleDropdownInputController.value;
        onDoubleDropdownInputValueChanged?.call(doubleDropdownInputValue);
      });
    });
  }

  void _setupBooleanDropdownInputController() {
    booleanDropdownInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        booleanDropdownInputValue = booleanDropdownInputController.value;
        onBooleanDropdownInputValueChanged?.call(booleanDropdownInputValue);
      });
    });
  }

  void _setupStringSegmentedInputController() {
    stringSegmentedInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        stringSegmentedInputValue = stringSegmentedInputController.value;
        onStringSegmentedInputValueChanged?.call(stringSegmentedInputValue);
      });
    });
  }

  void _setupIntegerSegmentedInputController() {
    integerSegmentedInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        integerSegmentedInputValue = integerSegmentedInputController.value;
        onIntegerSegmentedInputValueChanged?.call(integerSegmentedInputValue);
      });
    });
  }

  void _setupDoubleSegmentedInputController() {
    doubleSegmentedInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        doubleSegmentedInputValue = doubleSegmentedInputController.value;
        onDoubleSegmentedInputValueChanged?.call(doubleSegmentedInputValue);
      });
    });
  }

  void _setupBooleanSegmentedInputController() {
    booleanSegmentedInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        booleanSegmentedInputValue = booleanSegmentedInputController.value;
        onBooleanSegmentedInputValueChanged?.call(booleanSegmentedInputValue);
      });
    });
  }

  void _setupStringRadioInputController() {
    stringRadioInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        stringRadioInputValue = stringRadioInputController.value;
        onStringRadioInputValueChanged?.call(stringRadioInputValue);
      });
    });
  }

  void _setupIntegerRadioInputController() {
    integerRadioInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        integerRadioInputValue = integerRadioInputController.value;
        onIntegerRadioInputValueChanged?.call(integerRadioInputValue);
      });
    });
  }

  void _setupDoubleRadioInputController() {
    doubleRadioInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        doubleRadioInputValue = doubleRadioInputController.value;
        onDoubleRadioInputValueChanged?.call(doubleRadioInputValue);
      });
    });
  }

  void _setupBooleanRadioInputController() {
    booleanRadioInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        booleanRadioInputValue = booleanRadioInputController.value;
        onBooleanRadioInputValueChanged?.call(booleanRadioInputValue);
      });
    });
  }

  void _setupSwitchInputController() {
    switchInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        switchInputValue = switchInputController.value;
        onSwitchInputValueChanged?.call(switchInputValue);
      });
    });
  }

  void _setupCheckboxInputController() {
    checkboxInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        checkboxInputValue = checkboxInputController.value;
        onCheckboxInputValueChanged?.call(checkboxInputValue);
      });
    });
  }

  void _setupDatepickerInputController() {
    datepickerInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        datepickerInputValue = datepickerInputController.value;
        onDatepickerInputValueChanged?.call(datepickerInputValue);
      });
    });
  }

  void _setupComplexInputController() {
    complexInputController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        complexInputValue = complexInputController.value;
        onComplexInputValueChanged?.call(complexInputValue);
      });
    });
  }

  void dispose() {
    textInputController.dispose();
    integerInputController.dispose();
    doubleInputController.dispose();
    integerSliderInputController.dispose();
    doubleSliderInputController.dispose();
    stringDropdownInputController.dispose();
    integerDropdownInputController.dispose();
    doubleDropdownInputController.dispose();
    booleanDropdownInputController.dispose();
    stringSegmentedInputController.dispose();
    integerSegmentedInputController.dispose();
    doubleSegmentedInputController.dispose();
    booleanSegmentedInputController.dispose();
    stringRadioInputController.dispose();
    integerRadioInputController.dispose();
    doubleRadioInputController.dispose();
    booleanRadioInputController.dispose();
    switchInputController.dispose();
    checkboxInputController.dispose();
    datepickerInputController.dispose();
    complexInputController.dispose();
  }
}

Summary:
I represent a presenter responsible for managing Cargo forms, facilitating the interaction between the user interface and cargo-related data.

Responsibility:
1. I handle the presentation and manipulation of cargo data, including sender and receiver addresses, weight, transport distance, delivery status, and discounts.
2. I manage user interactions for saving, resetting, and updating cargo model information.
3. I provide functionality for switching between Standard Cargo and Accompanying Cargo.

Collaborators:
- accompanyingRadioButton: Collaborates with the radio button for selecting Accompanying Cargo.
- cancelButton: Collaborates with the 'Cancel' button for canceling form operations.
- cargoRadioButton: Collaborates with the radio button for selecting Standard Cargo.
- deliveryStatusOptionsInput: Collaborates with the drop-down list for selecting delivery status.
- discountLabel: Collaborates with the label for displaying discounts.
- discountNumberInput: Collaborates with the input field for entering discounts.
- receiverAddressTextInput: Collaborates with the input field for receiver addresses.
- resetButton: Collaborates with the 'Reset' button for resetting form data.
- saveButton: Collaborates with the 'Save' button for saving cargo information.
- senderAddressTextInput: Collaborates with the input field for sender addresses.
- transportDistanceNumberInput: Collaborates with the input field for transport distance.
- weightNumberInput: Collaborates with the input field for cargo weight.

Public API and Key Messages:
• changeModelToStandardCargo: Switches the cargo model to Standard Cargo.
• changeModelToAccompanyingCargo: Switches the cargo model to Accompanying Cargo.
• resetFormAndInform: Resets the form and informs the user.
• updateModelAndInform: Updates the model and informs the user.

Example:
```
CargoFormPresenter open.
```

Internal Representation and Key Implementation Points:

Instance Variables:
- accompanyingRadioButton: Radio button for selecting Accompanying Cargo.
- cancelButton: 'Cancel' button for canceling operations.
- cargoRadioButton: Radio button for selecting Standard Cargo.
- deliveryStatusOptionsInput: Drop-down list for selecting delivery status.
- discountLabel: Label for displaying discounts.
- discountNumberInput: Input field for entering discounts.
- receiverAddressTextInput: Input field for receiver addresses.
- resetButton: 'Reset' button for resetting form data.
- saveButton: 'Save' button for saving cargo information.
- senderAddressTextInput: Input field for sender addresses.
- transportDistanceNumberInput: Input field for transport distance.
- weightNumberInput: Input field for cargo weight.

Implementation Points:
- The class is organized into categories for actions, configuring, layout, model updating, form updating, initialization, and examples.
- It ensures the proper representation and interaction with UI elements for cargo data and user actions.

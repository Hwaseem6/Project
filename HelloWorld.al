// // Welcome to your new AL extension.
// // Remember that object names and IDs should be unique across all extensions.
// // AL snippets start with t*, like tpageext - give them a try and happy coding!

// namespace DefaultPublisher.ALProject1;

// using Microsoft.Sales.Customer;

// pageextension 50200 CustomerListExt extends "Customer List"
// {
//     var
//         HelloWorldErr: Label 'Hello World';

//     var
//         CustomerNumberMsg: Label 'Hello World';

//     trigger OnOpenPage();
//     begin
//         //  Message('App published: Hello world');
//         Message(CustomerNumberMsg);
//     end;
// }
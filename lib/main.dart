import 'package:accountsntax/screens/drawer_options/accounting/expenses_screen.dart';
import 'package:accountsntax/screens/drawer_options/accounting/invoice_and_sales_operations/customers_screen.dart';
import 'package:accountsntax/screens/drawer_options/accounting/invoice_and_sales_operations/item_operations/add_invoice_item.dart';
import 'package:accountsntax/screens/drawer_options/accounting/invoice_and_sales_operations/item_operations/edit_invoice_item.dart';
import 'package:accountsntax/screens/drawer_options/accounting/invoice_and_sales_operations/items_screen.dart';
import 'package:accountsntax/screens/drawer_options/accounting/invoice_and_sales_screen.dart';
import 'package:accountsntax/screens/drawer_options/accounting/purchase_and_expense_screen.dart';
import 'package:accountsntax/screens/drawer_options/accounting/purchase_operations/add_supplier_screen.dart';
import 'package:accountsntax/screens/drawer_options/accounting/purchase_operations/edit_supplier_screen.dart';
import 'package:accountsntax/screens/drawer_options/accounting/purchase_operations/suppliers_screen.dart';
import 'package:accountsntax/screens/drawer_options/upload_screen.dart';
import 'package:accountsntax/screens/invoice_operations/add_customer_screen.dart';
import 'package:accountsntax/screens/basic_details_operations/add_address_details_screen.dart';
import 'package:accountsntax/screens/basic_details_operations/add_bank_details_screen.dart';
import 'package:accountsntax/screens/basic_details_operations/edit_address_details_screen.dart';
import 'package:accountsntax/screens/basic_details_operations/edit_bank_details_screen.dart';
import 'package:accountsntax/screens/basic_details_operations/edit_basic_details_screen.dart';
import 'package:accountsntax/screens/basic_details_operations/edit_business_details_screen.dart';
import 'package:accountsntax/screens/basic_details_operations/view_address_details_screen.dart';
import 'package:accountsntax/screens/basic_details_operations/view_bank_details_screen.dart';
import 'package:accountsntax/screens/basic_details_operations/view_basic_details_screen.dart';
import 'package:accountsntax/screens/basic_details_operations/view_business_details_screen.dart';
import 'package:accountsntax/screens/change_password.dart';
import 'package:accountsntax/screens/drawer_options/company_profile_screen.dart';
import 'package:accountsntax/screens/invoice_operations/create_invoice_screen.dart';
import 'package:accountsntax/screens/invoice_operations/customer_details_screen.dart';
import 'package:accountsntax/screens/drawer_options/mis_operations/mis_screen.dart';
import 'package:accountsntax/screens/drawer_options/mis_operations/sales_operations/sales_description.dart';
import 'package:accountsntax/screens/invoice_operations/add_item_screen.dart';
import 'package:accountsntax/screens/invoice_operations/add_more_details.dart';
import 'package:accountsntax/screens/invoice_operations/view_invoice_screen.dart';
import 'package:accountsntax/screens/otp_screen.dart';
import 'package:accountsntax/screens/partner_operations/add_partner_screen.dart';
import 'package:accountsntax/screens/partner_operations/edit_partner_screen.dart';
import 'package:accountsntax/screens/partner_operations/view_partner_screen.dart';
import 'package:accountsntax/screens/splash_screen.dart';
import 'package:accountsntax/screens/vault_operations/add_vault_screen.dart';
import 'package:accountsntax/screens/vault_operations/edit_vault_screen.dart';
import 'package:accountsntax/screens/vault_operations/view_vault_screen.dart';
import 'package:accountsntax/widgets/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:accountsntax/utils/routes.dart';
import 'package:accountsntax/utils/theme.dart';
import 'package:accountsntax/screens/intro_screen.dart';
import 'package:accountsntax/screens/login_screen.dart';
import 'package:accountsntax/screens/signup_screen.dart';
import 'package:accountsntax/screens/dashboard_screen.dart';

void main() {
  runApp(const AccountsntaxApp());
}

class AccountsntaxApp extends StatelessWidget {
  const AccountsntaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accountsntax',
      theme: buildThemeData(),
      initialRoute: splashRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        splashRoute: (context) => const SplashScreen(),
        introRoute: (context) => const IntroScreen(),
        loginRoute: (context) => const LoginScreen(),
        signupRoute: (context) => const SignUpScreen(),
        dashboardRoute: (context) => DashboardScreen(),
        otpRoute: (context) => const OTPScreen(),
        notificationRoute: (context) => const NotificationPage(),
        changePasswordRoute: (context) => const ChangePasswordScreen(),
        companyProfileRoute: (context) => CompanyProfilePage(),
        editBasicDetailsRoute: (context) => const EditBasicDetailsScreen(),
        editAddressDetailsRoute: (context) => const EditAddressDetailsScreen(),
        editBusinessDetailsRoute: (context) => const EditBusinessDetailsScreen(),
        addAddressDetailsRoute: (context) => AddAddressDetailsScreen(),
        addBankDetailsRoute: (context) => AddBankDetailsScreen(),
        editBankDetailsRoute: (context) => const EditBankDetailsScreen(),
        viewBasicDetailsRoute:(context) => const ViewBasicDetailsScreen(),
        viewBusinessDetailsRoute:(context) => const ViewBusinessDetailsScreen(),
        viewAddressDetailsRoute:(context)=>const ViewAddressDetailsScreen(),
        viewBankDetailsRoute:(context) => const ViewBankDetailsScreen(),
        viewPartnerDetailsRoute:(context) => const ViewPartnerDetailsScreen(),
        editPartnerDetailsRoute:(context) => const EditPartnerDetailsScreen(),
        addPartnerDetailsRoute:(context)=>const AddPartnerDetailsScreen(),
        viewVaultDetailsRoute:(context) => const ViewVaultDetailsScreen(),
        addVaultDetailsRoute:(context) => const AddVaultDetailsScreen(),
        editVaultDetailsRoute:(context)=>const EditVaultDetailsScreen(),
        misScreenRoute:(context) => const MISScreen(),
        salesPerformanceRoute:(context) => const SalesDescription(),
        createInvoiceRoute:(context) => const CreateInvoiceScreen(),
        editCustomerRoute:(context) => const CustomerDetailsScreen(),
        addCustomerRoute:(context) => const AddCustomerDetailsScreen(),
        addItemRoute:(context) => const AddItemScreen(),
        addMoreDetailsRoute:(context) => const AddMoreDetailsScreen(),
        viewInvoiceRoute:(context) => const ViewInvoiceScreen(),
        expensesRoute:(context) => const ExpensesDescription(),
        invoiceSalesRoute:(context) => const InvoiceAndSalesScreen(),
        customerRoute:(context) => const CustomerScreen(),
        itemRoute:(context) => const ItemScreen(),
        addInvoiceRoute:(context) => const AddInvoiceItemScreen(),
        editInvoiceRoute:(context) => const EditInvoiceItem(),
        uploadRoute:(context) => const UploadScreen(),
        purchaseExpenseRoute:(context) => const PurchaseAndExpenseScreen(),
        supplierRoute:(context) => const SupplierScreen(),
        addSupplierRoute:(context) => const AddSupplierDetailsScreen(),
        editSupplierRoute:(context) => const SupplierDetailsScreen(),
        },
    );
  }
}

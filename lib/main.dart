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
import 'package:accountsntax/screens/company_profile_screen.dart';
import 'package:accountsntax/screens/create_invoice_screen.dart';
import 'package:accountsntax/screens/customer_details_screen.dart';
import 'package:accountsntax/screens/drawer_options/mis_screen.dart';
import 'package:accountsntax/screens/drawer_options/sales_description.dart';
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
        },
    );
  }
}

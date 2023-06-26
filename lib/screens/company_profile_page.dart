// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api
import 'package:accountsntax/utils/routes.dart';
import 'package:flutter/material.dart';

class CompanyProfilePage extends StatefulWidget {
  @override
  _CompanyProfilePageState createState() => _CompanyProfilePageState();
}

class _CompanyProfilePageState extends State<CompanyProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
            width: 50,
          ),
          SizedBox(
            height: 50,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              '       Company Profile',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TabBar(
            controller: _tabController,
            labelColor: const Color(0xFF663274),
            indicatorColor: const Color(0xFF663274),
            tabs: const [
              Tab(
                text: 'Basic Details',
              ),
              Tab(
                text: 'Partner',
              ),
              Tab(
                text: 'Vault',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: const Color(0xFFF9E8E3),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: const Row(
                                children: [
                                  SizedBox(width: 5),
                                  Text(
                                    'Basic Info',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF663274),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, viewBasicDetailsRoute);
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 125,
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(33),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Company Name',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF663274),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'Type',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF663274),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 85,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text(
                                          'Shirom',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'Professional',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: 23)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 16,
                                right: 16,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, editBasicDetailsRoute);
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    color: Color(0xFF663274),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: const Color(0xFFF9E8E3),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: const Row(
                                children: [
                                  SizedBox(width: 5),
                                  Text(
                                    'Business Details',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF663274),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, viewBusinessDetailsRoute);
                          },
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 125,
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(33),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'PAN',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF663274),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'Name as Per Pan',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF663274),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 23.5,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text(
                                          'FIXRK1522Q',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'Abhi Nandan Jain',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: 23)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 16,
                                right: 16,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, editBusinessDetailsRoute);
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    color: Color(0xFF663274),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: const Color(0xFFF9E8E3),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: const Row(
                                children: [
                                  Text(
                                    'Address',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF663274),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, addAddressDetailsRoute);
                                },
                                child: const Icon(
                                  Icons.add,
                                  color: Color(0xFF663274),
                                ),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, viewAddressDetailsRoute);
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 125,
                                width: double.infinity,
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(33),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Type',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF663274),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'Address Line 1',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF663274),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 45,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text(
                                          'Registered',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'H.NO.1',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: 114)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 16,
                                right: 16,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, editAddressDetailsRoute);
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    color: Color(0xFF663274),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              color: const Color(0xFFF9E8E3),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Row(
                                children: [
                                  const Text(
                                    'Bank Details',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF663274),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 221,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, addBankDetailsRoute);
                                    },
                                    child: const Icon(
                                      Icons.add,
                                      color: Color(0xFF663274),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, viewBankDetailsRoute);
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 125,
                                width: double.infinity,
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(33),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Bank Name',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF663274),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'Account Number',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFF663274),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 23.5,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text(
                                          'HDFC Bank',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          '12545856512',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: 55)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 16,
                                right: 16,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, editBankDetailsRoute);
                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    color: Color(0xFF663274),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Center(child: Text('Partner')),
                const Center(child: Text('Vault')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

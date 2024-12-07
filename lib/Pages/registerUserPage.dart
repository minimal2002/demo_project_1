import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Registeruserpage extends StatefulWidget {
  const Registeruserpage({super.key});

  @override
  State<Registeruserpage> createState() => _RegisteruserpageState();
}

class _RegisteruserpageState extends State<Registeruserpage> {
  @override
  Widget build(BuildContext context) {
    final List<String> yearItems = [
      'ปี 1',
      'ปี 2',
      'ปี 3',
      'ปี 4',
      'อื่นๆ',
    ];
    final List<String> facultyItems = [
      'คณะวิทยาการสารสนเทศ',
      'คณะวิทยาศาสตร์',
      'คณะวิศวกรรมศาสตร์',
      'คณะสถาปัตยกรรมศาสตร์ ผังเมือง และนฤมิตศิลป์',
      'คณะสิ่งแวดล้อมและทรัพยากรศาสตร์',
      'คณะเทคโนโลยี',
      'อื่นๆ',
    ];
    String? selectedYearValue;
    String? selectedFacultyValue;

    final screenSize = MediaQuery.of(context).size;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffD0E4FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'RoomMatch',
                    style: TextStyle(
                      color: const Color(0xff2C34FF),
                      fontWeight: FontWeight.bold,
                      fontSize: Get.textTheme.headlineLarge?.fontSize,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'คุณอายุเท่าไหร่?',
                      style: TextStyle(
                          fontSize: Get.textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                child: Row(
                  children: [
                    Text(
                      'สถานะการศึกษาของคุณ?',
                      style: TextStyle(
                          fontSize: Get.textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
             Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 8),
                child: Row(
                  children: [
                    Text(
                      'ชั้นปี?',
                      style: TextStyle(
                          fontSize: Get.textTheme.bodyMedium?.fontSize,),
                    ),
                  ],
                ),
              ),
              // DropdownButton2
              DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  // เพิ่มระยะห่างในแนวนอนเพื่อให้เมนูมีระยะห่างที่เหมาะสม
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none, // ปรับขนาดมุมของ border
                  ),
                  // การตกแต่งเพิ่มเติม
                  filled: true,
                  fillColor: Colors.white, // กำหนดสีพื้นหลัง
                ),
                hint: const Text(
                  'ชั้นปีที่กำลังศึกษา', // ข้อความตัวอย่างเมื่อไม่มีการเลือก
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold, // เพิ่มความหนาของฟอนต์
                    color: Colors.black54, // กำหนดสีให้กับข้อความ
                  ),
                ),
                items: yearItems
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black, // สีของข้อความในตัวเลือก
                            ),
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Please select gender.'; // ข้อความเมื่อยังไม่ได้เลือก
                  }
                  return null;
                },
                onChanged: (value) {
                  // ทำบางอย่างเมื่อค่าที่เลือกเปลี่ยนไป
                },
                onSaved: (value) {
                  selectedYearValue = value.toString();
                },
                buttonStyleData: ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45, // สีของลูกศร
                  ),
                  iconSize: 24, // ขนาดของลูกศร
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(20), // ปรับขนาดมุมของเมนู
                    color: Colors.white, // สีพื้นหลังของเมนู
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 45, // ปรับความสูงของตัวเลือกในเมนู
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 8),
                child: Row(
                  children: [
                    Text(
                      'คณะ?',
                      style: TextStyle(
                          fontSize: Get.textTheme.bodyMedium?.fontSize,),
                    ),
                  ],
                ),
              ),

              DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  // เพิ่มระยะห่างในแนวนอนเพื่อให้เมนูมีระยะห่างที่เหมาะสม
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none, // ปรับขนาดมุมของ border
                  ),
                  // การตกแต่งเพิ่มเติม
                  filled: true,
                  fillColor: Colors.white, // กำหนดสีพื้นหลัง
                ),
                hint: const Text(
                  'คณะที่กำลังศึกษา', // ข้อความตัวอย่างเมื่อไม่มีการเลือก
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold, // เพิ่มความหนาของฟอนต์
                    color: Colors.black54, // กำหนดสีให้กับข้อความ
                  ),
                ),
                items: facultyItems
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black, // สีของข้อความในตัวเลือก
                            ),
                          ),
                        ))
                    .toList(),
                validator: (value) {
                  if (value == null) {
                    return 'Please select gender.'; // ข้อความเมื่อยังไม่ได้เลือก
                  }
                  return null;
                },
                onChanged: (value) {
                  // ทำบางอย่างเมื่อค่าที่เลือกเปลี่ยนไป
                },
                onSaved: (value) {
                  selectedYearValue = value.toString();
                },
                buttonStyleData: ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45, // สีของลูกศร
                  ),
                  iconSize: 24, // ขนาดของลูกศร
                ),
                dropdownStyleData: DropdownStyleData(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(20), // ปรับขนาดมุมของเมนู
                    color: Colors.white, // สีพื้นหลังของเมนู
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 45, // ปรับความสูงของตัวเลือกในเมนู
                ),
              ),

              SizedBox(
                height: screenHeight * 0.03,
              ),
              ElevatedButton(
                onPressed: () {
                  // ฟังก์ชั่นเมื่อกดปุ่ม
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFFEFB5),
                  padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 80), // กำหนดระยะห่างภายในปุ่ม
                  shape: RoundedRectangleBorder(
                    // รูปทรงของปุ่ม
                    borderRadius:
                        BorderRadius.circular(30), // ทำให้มุมปุ่มโค้งมน
                  ),
                ),
                child: Text(
                  'บันทึก',
                  style: TextStyle(
                      fontSize: Get.textTheme.bodyLarge?.fontSize,
                          fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 47, 47, 47)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

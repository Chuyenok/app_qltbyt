import 'package:appdemo/models/report_screen.dart';
import 'package:appdemo/models/inventory_screen.dart';
import 'package:flutter/material.dart';
import 'package:appdemo/models/model.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(this.models);
  final Model models;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  //final bool check = (this.widget.models.titile == 'Đang báo hỏng');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          elevation: 0,
          title: Text('Thiết Bị'),
          centerTitle: true,
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: ListView(children: [
              Column(children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 480,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 242, 242),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(children: [
                    CircleAvatar(
                      child: CircleAvatar(
                        child: Image.asset(
                            'assets/images/rounded-in-photoretrica.png'),
                        radius: 40,
                      ),
                      backgroundColor: Color.fromARGB(255, 230, 228, 228),
                      radius: 60,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      this.widget.models.titile,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 40,
                      margin: EdgeInsets.all(20),
                      child: Text(this.widget.models.description,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: (this.widget.models.description == ('Mới')) ||
                                  (this.widget.models.description ==
                                      ('Đang sử dụng'))
                              ? Color.fromARGB(255, 25, 208, 34)
                              : Colors.red),
                    ),
                    Divider(
                      //Divider tạo dòng kẻ ngang
                      color: Colors.blue[700], // Màu của dòng kẻ
                      thickness: 1.4, // Độ dày của dòng kẻ
                      indent: 20, // Khoảng cách từ lề trái
                      endIndent: 20, // Khoảng cách từ lề phải
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10, right: 30, left: 30, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Model:',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text('Serial:',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500))
                                ]),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(this.widget.models.model,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                  Text(this.widget.models.serial,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black))
                                ])
                          ],
                        )),
                    Divider(
                      //Divider tạo dòng kẻ ngang
                      color: Colors.blue[700], // Màu của dòng kẻ
                      thickness: 1.4, // Độ dày của dòng kẻ
                      indent: 20, // Khoảng cách từ lề trái
                      endIndent: 20, // Khoảng cách từ lề phải
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10, right: 30, left: 30, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Năm sản xuất:',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text('Năm sử dụng:',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500))
                                ]),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(this.widget.models.yearMan.toString(),
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                  Text(this.widget.models.yearUse.toString(),
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black))
                                ])
                          ],
                        )),
                    Divider(
                      //Divider tạo dòng kẻ ngang
                      color: Colors.blue[700], // Màu của dòng kẻ
                      thickness: 1.4, // Độ dày của dòng kẻ
                      indent: 20, // Khoảng cách từ lề trái
                      endIndent: 20, // Khoảng cách từ lề phải
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: 10, right: 30, left: 30, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hãng sản xuất:',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text('Xuất xứ:',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500))
                                ]),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(this.widget.models.manufacturer,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                  Text(this.widget.models.origin,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black))
                                ])
                          ],
                        )),
                  ]),
                ),
                Container(
                  width: double.infinity,
                  child: Text('Lịch sử báo hỏng thiết bị',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  margin:
                      EdgeInsets.only(top: 0, bottom: 5, right: 10, left: 10),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 208, 204, 204)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Xem lịch sử báo hỏng thiết bị',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Positioned(
                            right: 3,
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 24.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(
                          top: 5, bottom: 5, right: 10, left: 10),
                      alignment: Alignment.center),
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Lịch sử kiểm kê thiết bị',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  margin:
                      EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromARGB(255, 208, 204, 204)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Xem lịch sử kiểm kê thiết bị',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Positioned(
                              right: 3,
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                size: 24.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(
                            top: 5, bottom: 5, right: 10, left: 10),
                        alignment: Alignment.center)),
                ((this.widget.models.description == 'Đang báo hỏng') ||
                        (this.widget.models.description == 'Đã thanh lý') ||
                        (this.widget.models.description == 'Đang sửa chữa') ||
                        (this.widget.models.description == 'Ngưng sử dụng'))
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      InventoryScreen(this.widget.models)));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 45,
                          child: Text('Kiểm kê',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue),
                        ))
                    : Container(
                        margin: EdgeInsets.all(30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ReportScreen(
                                              this.widget.models)));
                                },
                                child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue),
                                    child: Text(
                                      'Báo Hỏng',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      InventoryScreen(this.widget.models)));
                              },
                              child: Container(
                                  alignment: Alignment.center,
                                  width: 120,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue),
                                  child: Text('Kiểm Kê',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white))),
                            ))
                          ],
                        ),
                      ),
              ])
            ])));
  }
}

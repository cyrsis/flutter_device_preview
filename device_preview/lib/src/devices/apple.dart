import 'package:flutter/widgets.dart';

import '../device_frame.dart';
import 'devices.dart';

const iPhone8 = const Device.iOS(
    name: "iPhone 8",
    frame: _phoneFrameWithoutNotch,
    query: MediaQueryData(
        padding: EdgeInsets.zero, size: Size(375, 667), devicePixelRatio: 2.0));

const iPhoneXs = const Device.iOS(
    name: "iPhone XS",
    query: MediaQueryData(
        size: Size(375, 812),
        padding: EdgeInsets.only(
          top: 44.0,
          bottom: 34.0,
        ),
        devicePixelRatio: 3.0),
    frame: _phoneFrameWithNotch);

const iPhoneXr = const Device.iOS(
    name: "iPhone XR",
    query: MediaQueryData(
        size: Size(375, 812),
        padding: EdgeInsets.only(
          top: 44.0,
          bottom: 34.0,
        ),
        devicePixelRatio: 3.0),
    frame: _phoneFrameWithNotch);

final iPadAir = Device.iOS(
    name: "iPad Air",
    query: MediaQueryData(
        padding: EdgeInsets.zero,
        size: Size(768, 1024),
        devicePixelRatio: 2.0),
        frame: _tabletFrameWithoutNotch(768));

final iPadPro129 = Device.iOS(
    name: "iPad Pro 12,9",
    query: MediaQueryData(
        padding: EdgeInsets.zero,
        size: Size(834, 1112),
        devicePixelRatio: 2.0),
        frame: _tabletThinFrameWithoutNotch(834));

const watch40mm = const Device.iOS(
    name: "Watch 40mm",
    frame: DeviceFrame(
      borders: EdgeInsets.all(16),
      edgeRadius: BorderRadius.all(Radius.circular(42.0)),
      screenRadius: BorderRadius.all(Radius.circular(32.0)),
      
    ),
    query: MediaQueryData(
        padding: EdgeInsets.zero, size: Size(162, 197), devicePixelRatio: 2.0));

const _phoneFrameWithNotch = const DeviceFrame(
    borders: EdgeInsets.only(top: 18.0, right: 18.0, left: 18.0, bottom: 18.0),
    edgeRadius: BorderRadius.all(Radius.circular(56.0)),
    screenRadius: BorderRadius.all(Radius.circular(38.0)),
    sideButtons: [
      DeviceSideButton.left(
        fromTop: 116,
        size: 35,
        thickness: 6,
      ),
      DeviceSideButton.left(
        fromTop: 176,
        size: 60,
        thickness: 6,
      ),
      DeviceSideButton.left(
        fromTop: 240,
        size: 60,
        thickness: 6,
      ),
      DeviceSideButton.right(
        fromTop: 176,
        size: 90,
        thickness: 6,
      ),
    ],
    notch: DeviceNotch(
      width: 210,
      height: 28.0,
      joinRadius: Radius.circular(12.0),
      radius: Radius.circular(24.0),
    ));

const _phoneFrameWithoutNotch = const DeviceFrame(
    borders: EdgeInsets.only(top: 96.0, right: 18.0, left: 18.0, bottom: 96.0),
    edgeRadius: BorderRadius.all(Radius.circular(56.0)),
    screenRadius: BorderRadius.all(Radius.circular(2.0)),
    sideButtons: [
      DeviceSideButton.left(
        fromTop: 96,
        size: 35,
        thickness: 6,
      ),
      DeviceSideButton.left(
        fromTop: 156,
        size: 60,
        thickness: 6,
      ),
      DeviceSideButton.left(
        fromTop: 220,
        size: 60,
        thickness: 6,
      ),
      DeviceSideButton.right(
        fromTop: 156,
        size: 60,
        thickness: 6,
      ),
    ]);


DeviceFrame _tabletFrameWithoutNotch(double width) =>  DeviceFrame(
    borders: EdgeInsets.only(top: 96.0, right: 42.0, left: 42.0, bottom: 96.0),
    edgeRadius: BorderRadius.all(Radius.circular(56.0)),
    screenRadius: BorderRadius.all(Radius.circular(2.0)),
    sideButtons: [
      DeviceSideButton.right(
        fromTop: 96,
        size: 35,
        thickness: 6,
      ),
      DeviceSideButton.right(
        fromTop: 156,
        size: 60,
        thickness: 6,
      ),
      DeviceSideButton.top(
        fromLeft: width - 60 + 42,
        size: 60,
        thickness: 6,
      ),
    ]);

DeviceFrame _tabletThinFrameWithoutNotch(double width) =>  DeviceFrame(
    borders: EdgeInsets.only(top: 36.0, right: 36.0, left: 36.0, bottom: 36.0),
    edgeRadius: BorderRadius.all(Radius.circular(56.0)),
    screenRadius: BorderRadius.all(Radius.circular(16.0)),
    sideButtons: [
      DeviceSideButton.right(
        fromTop: 96,
        size: 42,
        thickness: 6,
      ),
      DeviceSideButton.right(
        fromTop: 146,
        size: 42,
        thickness: 6,
      ),
      DeviceSideButton.top(
        fromLeft: width - 24,
        size: 40,
        thickness: 6,
      ),
    ]);
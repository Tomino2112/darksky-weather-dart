// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
part of darksky_weather;

abstract class DataBlockBase {
  /// [optional] A human-readable summary of this data block.
  String summary;

  /**
   * [optional] A machine-readable text summary of this data block. (May take 
   * on the same values as the icon property of data points.)
   */
  String icon;
}

/**
 * A data block containing the weather conditions minute-by-minute for the next 
 * hour.
 */
@JsonClass() 
class MinutelyDataBlock implements DataBlockBase {
  /**
   * [required] An array of data points, ordered by time, which together 
   * describe the weather conditions at the requested location over time.
   */
  List<MinutelyDataPoint> data;

  /**
   * [optional] A machine-readable text summary of this data block. (May take 
   * on the same values as the icon property of data points.)
   */
  @override
  String icon;

  /// [optional] A human-readable summary of this data block.
  @override
  String summary;
}

/**
 * A data block containing the weather conditions hour-by-hour for the next two 
 * days.
 */
@JsonClass() 
class HourlyDataBlock implements DataBlockBase  {
  /**
   * [required] An array of data points, ordered by time, which together 
   * describe the weather conditions at the requested location over time.
   */
  List<HourlyDataPoint> data;

  /**
   * [optional] A machine-readable text summary of this data block. (May take 
   * on the same values as the icon property of data points.)
   */
  @override
  String icon;

  /// [optional] A human-readable summary of this data block.
  @override
  String summary;
}


/**
 * A data block containing the weather conditions day-by-day for the next week.
 */
@JsonClass() 
class DailyDataBlock implements DataBlockBase  {
  /**
   * [required] An array of data points, ordered by time, which together 
   * describe the weather conditions at the requested location over time.
   */
  List<DailyDataPoint> data;

  /**
   * [optional] A machine-readable text summary of this data block. (May take 
   * on the same values as the icon property of data points.)
   */
  @override
  String icon;

  /// [optional] A human-readable summary of this data block.
  @override
  String summary;
}
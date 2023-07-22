import 'dart:async';
import 'dart:math';
import 'package:birthday_app/common/app_colors/app_colors.dart';
import 'package:birthday_app/common/app_images/app_images.dart';
import 'package:birthday_app/features/home/domain/entities/food_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  var _open = false;
  var _start = 10;
  var _answerText = '';
  Color? _answerColor;
  Timer? _timer;
  FoodEntity? _food;
  late AnimationController _animationController;

  void gameOver(Timer? timer, Color color) {
    timer?.cancel();
    _answerColor = color;
    _open = false;
    _animationController.value = 0;
    _answerText = 'Правильный ответ: ${_food?.name}';
  }

  void timeOut(Timer timer) {
    gameOver(timer, Colors.redAccent);
  }

  void onGuessButtonPressed(Timer? timer) {
    gameOver(timer, Colors.greenAccent);
    setState(() {});
  }

  void onReadyButtonPressed() {
    _open = !_open;
    _start = 10;
    _answerColor = Colors.grey;
    _animationController.repeat();

    startTimer();
    setState(() {});
  }

  void startTimer() {
    final int randomIndex = Random().nextInt(FoodData.foodData.length);
    _food = FoodData.foodData[randomIndex];

    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (Timer timer) {
      _start == 0 ? timeOut(timer) : _start--;
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat;
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Угадай блюдо'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.chevron_left,
            color: AppColors.secondaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Text(
                'Снизу выйдет картинка блюда, тебе нужно объяснить своей команде, что это за блюдо, а они должны угадать!',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 8.h),
              _CounterWidget(open: _open, start: _start),
              SizedBox(height: 16.h),
              _ImageWidget(
                open: _open,
                food: _food,
                answerText: _answerText,
                answerColor: _answerColor,
              ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.mainColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r)))),
                  onPressed: () => onReadyButtonPressed(),
                  child: _open
                      ? RotationTransition(
                          turns: _animationController,
                          child: Image.asset(AppImages.hourglass, height: 30.h),
                        )
                      : const Text('Готов'),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _open
          ? ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(const StadiumBorder()),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.greenAccent),
                  foregroundColor: MaterialStateProperty.all(Colors.black)),
              onPressed: () {
                onGuessButtonPressed(_timer);
              },
              child: const Text('Угадал!'),
            )
          : null,
    );
  }
}

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({
    required bool open,
    required this.food,
    required this.answerText,
    required this.answerColor,
  }) : _open = open;

  final bool _open;
  final FoodEntity? food;
  final String answerText;
  final Color? answerColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        color: answerColor ?? Colors.black12,
        height: 300.w,
        child: _open
            ? Image.asset(
                food?.image ?? AppImages.defaultImage,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              )
            : Center(
                child: Text(
                  answerText,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ),
    );
  }
}

class _CounterWidget extends StatelessWidget {
  const _CounterWidget({
    required bool open,
    required int start,
  })  : _open = open,
        _start = start;

  final bool _open;
  final int _start;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: AnimatedContainer(
        curve: Curves.bounceOut,
        duration: const Duration(seconds: 1),
        width: _open ? 200.w : 0,
        height: _open ? 50.h : 0,
        color: (_start < 4) ? Colors.red : AppColors.mainColor,
        child: _open
            ? Center(
                child: Text(
                  '$_start',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}

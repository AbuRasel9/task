import 'package:flutter/material.dart';

class HomeTabWidget extends StatelessWidget {
  const HomeTabWidget({super.key, required this.text, this.color,  this.isSelect, required this.onPressed});
  final String text;
  final Color ?color;
  final bool? isSelect;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return Material(
      borderRadius: BorderRadius.circular(8,),
      color: Colors.transparent,
      type: MaterialType.transparency,
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: InkWell(
          onTap: onPressed,
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                // margin:  const EdgeInsets.only(right: 8,),
                padding:  const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8,),

                    color:isSelect ?? false? theme.colorScheme.secondary:const Color(0xff858585).withOpacity(.2)
                ),
                child: Text(text,style: theme.textTheme.bodySmall?.copyWith(color:isSelect ?? false? theme.colorScheme.onPrimary :theme.colorScheme.onSurface,),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

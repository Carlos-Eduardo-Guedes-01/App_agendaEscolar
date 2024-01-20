import 'package:flutter/material.dart';
// Pagote para usar o calendário(TableCalendar)
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  // Variável que guarda o dia clicado
  DateTime? _selectedDay;
  // Variável que marca o dia atual
  DateTime _focusedDay = DateTime.now();
  // Variável que diz o formato do calendário (semanal, quinzenal, mental ou anual)
  CalendarFormat _calendarFormat = CalendarFormat.month;
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      // Parte 3 para definir a lingua que o calendário estará
      locale: 'pt_BR',
      // Estilizando calendário
      // Aqui ocultamos o botão de escolha do formato do calendário, e centralizamos o título que no caso será o mês
      headerStyle:
          const HeaderStyle(formatButtonVisible: false, titleCentered: true),
      // Primeiro dia que o calendário vai marcar
      firstDay: DateTime.utc(2010, 10, 16),
      // Ultimo dia do calendário
      lastDay: DateTime.now(),
      // Dia atual
      focusedDay: _focusedDay,
    );
  }
}

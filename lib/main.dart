import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoom_widget/zoom_widget.dart';

const diskOrders = [
  [
    's2斧牙龍',
    's1尼多朗',
    's2尼多力諾',
    's2堅果啞鈴',
    's1寶貝龍',
    's4大鋼蛇',
    's3堅果啞鈴',
    's3雙斧戰龍',
    's2海魔獅',
    's2皮卡丘',
    's3伊布',
    's1海豹球',
    'L噴火龍',
    's1傑尼龜',
    's3水伊布',
    's2大岩蛇',
    's1小火龍',
    's3雷伊布',
    's2比比鳥',
    's1牙牙',
    's2火恐龍',
    's2妙蛙草',
    'L炎帝',
    's2甲殼龍',
    's4暴飛龍',
    's2海魔獅',
    's2妙蛙草',
    's2伊布',
    's3暴鯉龍',
    's4尼多后',
    '惡食大王',
    's1尼多朗',
    's1傑尼龜',
    's1牙牙',
    's2尼多娜',
    's3水箭龜',
    's2卡咪龜',
    's4雷伊布',
    'L水君',
    's2卡咪龜',
    's2大岩蛇',
    's2甲殼龍',
    's3皮卡丘',
    's3大鋼蛇',
    's1種子鐵球',
    's4噴火龍',
    's2堅果啞鈴',
    's1妙蛙種子',
    's2伊布',
    's2尼多娜',
  ],
  [
    's2大岩蛇',
    's2尼多娜',
    'L雷公',
    's1尼多朗',
    's2甲殼龍',
    'L謎擬Q',
    's2伊布',
    's3大比鳥',
    's1尼多蘭',
    's1種子鐵球',
    's1妙蛙種子',
    's3暴飛龍',
    '四顎針龍',
    's3帝牙海獅',
    's2妙蛙草',
    's4妙蛙花',
    's2斧牙龍',
    's2卡咪龜',
    's4雙斧戰龍',
    's2海魔獅',
    's2尼多娜',
    's4帝牙海獅',
    's4水伊布',
    's1傑尼龜',
    's2比比鳥',
    's3尼多王',
    's1牙牙',
    'L炎帝',
    's3尼多后',
    's1種子鐵球',
    's2比比鳥',
    's3爆焰龜獸',
    's4皮卡丘',
    's3雷伊布',
    's1寶貝龍',
    's1海豹球',
    's2皮卡丘',
    's2堅果啞鈴',
    's1波波',
    's2海魔獅',
    's1寶貝龍',
    's2火恐龍',
    '基格爾德',
    's2皮卡丘',
    's1小火龍',
    's3妙蛙花',
    's2尼多利諾',
    's2卡咪龜',
    's2斧牙龍',
    's3噴火龍',
  ],
  [
    's4爆焰龜獸',
    's3堅果啞鈴',
    's4水箭龜',
    's2火恐龍',
    's1小火龍',
    's2大岩蛇',
    's2甲殼龍',
    's2伊布',
    's1波波',
    's2卡咪龜',
    's1尼多蘭',
    'L阿爾宙斯',
    's2斧牙龍',
    's3尼多后',
    's2伊布',
    's1波波',
    's3水箭龜',
    's3暴鯉龍',
    's3火伊布',
    's1牙牙',
    's2尼多力諾',
    's2甲殼龍',
    's1寶貝龍',
    's2海魔獅',
    's2尼多娜',
    's1傑尼龜',
    's2皮卡丘',
    's2妙蛙草',
    'L炎帝',
    's1尼多朗',
    'L謎擬Q',
    's2比比鳥',
    's1種子鐵球',
    's3伊布',
    's4尼多后',
    's4暴鯉龍',
    's2火恐龍',
    's3尼多王',
    's2尼多利諾',
    's2斧牙龍',
    's3妙蛙花',
    '索爾迦雷歐',
    's4水伊布',
    's1妙蛙種子',
    's2比比鳥',
    's2卡咪龜',
    's2堅果啞鈴',
    's1海豹球',
    's3暴飛龍',
    's4妙蛙花',
  ],
  [
    's4火伊布',
    's2海魔獅',
    's2大岩蛇',
    's1牙牙',
    's1海豹球',
    's1種子鐵球',
    's2堅果啞鈴',
    '露奈雅拉',
    's1尼多朗',
    'L水君',
    's2甲殼龍',
    's3暴飛龍',
    's3雙斧戰龍',
    's2伊布',
    's3噴火龍',
    's2妙蛙草',
    's2斧牙龍',
    's2尼多娜',
    's1寶貝龍',
    's3火伊布',
    's2皮卡丘',
    's1妙蛙種子',
    's1波波',
    's2大岩蛇',
    's1尼多蘭',
    's4大比鳥',
    's2尼多利諾',
    's2火恐龍',
    's2卡咪龜',
    's3水伊布',
    's2皮卡丘',
    's1牙牙',
    's3暴鯉龍',
    's4噴火龍',
    'L甲賀忍蛙',
    's3堅果啞鈴',
    's1傑尼龜',
    's4火伊布',
    'L謎擬Q',
    's2尼多娜',
    's3帝牙海獅',
    's2比比鳥',
    's1小火龍',
    's4尼多王',
    's2堅果啞鈴',
    's4爆焰龜獸',
    's2妙蛙草',
    's2海魔獅',
    's2卡咪龜',
    's2甲殼龍',
  ],
  [
    's2卡咪龜',
    'L雷公',
    's3雙斧戰龍',
    's2甲殼龍',
    's3皮卡丘',
    '拉帝歐斯',
    's1波波',
    's2比比鳥',
    's2尼多力諾',
    's1小火龍',
    's3皮卡丘',
    's3噴火龍',
    's3大比鳥',
    's2火恐龍',
    's3雷伊布',
    's2卡咪龜',
    's2大岩蛇',
    's2斧牙龍',
    's3大鋼蛇',
    'L謎擬Q',
    's2火恐龍',
    's1妙蛙種子',
    's2尼多娜',
    's3水伊布',
    's1尼多朗',
    's2斧牙龍',
    's4暴飛龍',
    's1寶貝龍',
    's1海豹球',
    's1牙牙',
    's2大岩蛇',
    's4尼多王',
    's3伊布',
    's1海豹球',
    's2尼多利諾',
    's3爆焰龜獸',
    'L水君',
    '超夢',
    's2堅果啞鈴',
    's2伊布',
    's2海魔獅',
    's4雷伊布',
    's1尼多朗',
    's1寶貝龍',
    's1妙蛙種子',
    's2皮卡丘',
    's2海魔獅',
    's2妙蛙草',
    's4帝牙海獅',
    's1種子鐵球',
  ],
  [
    's3皮卡丘',
    's2海魔獅',
    's1海豹球',
    's2皮卡丘',
    's1小火龍',
    's1種子鐵球',
    's2尼多力諾',
    's4大比鳥',
    's2堅果啞鈴',
    's2妙蛙草',
    's2大岩蛇',
    's2妙蛙草',
    '拉帝亞斯',
    's4大鋼蛇',
    's1尼多蘭',
    's1小火龍',
    's3爆焰龜獸',
    'L雷公',
    's1尼多蘭',
    's3大比鳥',
    's2甲殼龍',
    's1尼多朗',
    's2比比鳥',
    's1傑尼龜',
    's3帝牙海獅',
    's2火恐龍',
    's2伊布',
    's2斧牙龍',
    's2皮卡丘',
    's2堅果啞鈴',
    's2伊布',
    's3妙蛙花',
    's2尼多利諾',
    's3尼多后',
    's2火恐龍',
    'L謎擬Q',
    's2卡咪龜',
    's1妙蛙種子',
    's1波波',
    's3水伊布',
    's4水箭龜',
    's1尼多朗',
    's4尼多王',
    's3火伊布',
    's2尼多娜',
    's3噴火龍',
    's4火伊布',
    's2比比鳥',
    's3大鋼蛇',
    'L甲賀忍蛙',
  ],
  [
    's1尼多朗',
    's3暴飛龍',
    '達克萊伊',
    's3大比鳥',
    's1尼多蘭',
    's3火伊布',
    's2海魔獅',
    's3尼多王',
    's2堅果啞鈴',
    's2甲殼龍',
    's2卡咪龜',
    's4水箭龜',
    's1海豹球',
    's3爆焰龜獸',
    's2伊布',
    's2尼多力諾',
    's2尼多娜',
    's1波波',
    's1寶貝龍',
    's2大岩蛇',
    'L謎擬Q',
    'L噴火龍',
    's4雙斧戰龍',
    's1波波',
    's1傑尼龜',
    'L炎帝',
    's1種子鐵球',
    's2皮卡丘',
    's1牙牙',
    's1傑尼龜',
    's3水箭龜',
    's2火恐龍',
    's4皮卡丘',
    's4妙蛙花',
    's2尼多利諾',
    's2伊布',
    's3帝牙海獅',
    's2斧牙龍',
    's2比比鳥',
    's4水伊布',
    's1小火龍',
    's2火恐龍',
    's2妙蛙草',
    's4暴鯉龍',
    's3尼多后',
    's2甲殼龍',
    's2妙蛙草',
    's2比比鳥',
    's2堅果啞鈴',
    's2大岩蛇',
  ],
  [
    's4暴鯉龍',
    'L阿爾宙斯',
    's3雷伊布',
    's3堅果啞鈴',
    's4尼多后',
    's2尼多娜',
    's2卡咪龜',
    's4皮卡丘',
    's1波波',
    's3尼多王',
    's2妙蛙草',
    's3雙斧戰龍',
    's4噴火龍',
    's1尼多蘭',
    's1小火龍',
    's3伊布',
    's3暴鯉龍',
    's2伊布',
    's2斧牙龍',
    's1尼多朗',
    's2尼多娜',
    's2比比鳥',
    's2尼多力諾',
    's2大岩蛇',
    's2甲殼龍',
    's2火恐龍',
    's2堅果啞鈴',
    's1寶貝龍',
    's3皮卡丘',
    's2妙蛙草',
    's3大鋼蛇',
    's4雷伊布',
    '超夢',
    's2海魔獅',
    's1種子鐵球',
    'L雷公',
    's2火恐龍',
    's2皮卡丘',
    's1妙蛙種子',
    's1海豹球',
    's1牙牙',
    'L水君',
    's3妙蛙花',
    's2比比鳥',
    's1傑尼龜',
    's3水箭龜',
    's2皮卡丘',
    's1傑尼龜',
    's2斧牙龍',
    's2伊布',
  ],
];

const markables = [
  // 5-star
  [
    '超夢',
    '拉帝亞斯',
    '拉帝歐斯',
    '達克萊伊',
    '基格爾德',
    '索爾迦雷歐',
    '露奈雅拉',
    '惡食大王',
    '四顎針龍',
    'L噴火龍',
    'L阿爾宙斯',
    'L甲賀忍蛙',
  ],

  // 4-star
  [
    's4妙蛙花',
    's4噴火龍',
    's4水箭龜',
    's4帝牙海獅',
    's4大比鳥',
    's4雙斧戰龍',
    's4尼多后',
    's4尼多王',
    's4水伊布',
    's4雷伊布',
    's4火伊布',
    's4皮卡丘',
    's4暴飛龍',
    's4爆焰龜獸',
    's4暴鯉龍',
    's4大鋼蛇',
    'L雷公',
    'L炎帝',
    'L水君',
  ],

  // 3-star
  [
    's3妙蛙花',
    's3噴火龍',
    's3水箭龜',
    's3伊布',
    's3帝牙海獅',
    's3大比鳥',
    's3堅果啞鈴',
    's3雙斧戰龍',
    's3尼多后',
    's3尼多王',
    's3水伊布',
    's3雷伊布',
    's3火伊布',
    's3皮卡丘',
    's3暴飛龍',
    's3爆焰龜獸',
    's3暴鯉龍',
    's3大鋼蛇',
    'L謎擬Q',
  ],
];

const purpleFiveStars = {
  '超夢',
  '拉帝亞斯',
  '拉帝歐斯',
  '達克萊伊',
  '基格爾德',
  '索爾迦雷歐',
  '露奈雅拉',
  '惡食大王',
  '四顎針龍',
};

const redFiveStars = {
  'L噴火龍',
  'L阿爾宙斯',
  'L甲賀忍蛙',
};

const numWorkspaces = 3;

void main() {
  runApp(const MyApp());
}

class MyAppState extends ChangeNotifier {
  int currentWorkspaceIndex = 0;

  final _marked = [
    for (int i = 0; i < numWorkspaces; ++i)
      [
        for (final disks in markables)
          [
            for (final _ in disks) 0,
          ],
      ],
  ];

  List<List<int>> getMarked() {
    return _marked[currentWorkspaceIndex];
  }

  void setMarked(int i, int j, int value) {
    _marked[currentWorkspaceIndex][i][j] = value;
    notifyListeners();
  }

  void clearMarked() {
    _marked[currentWorkspaceIndex] = [
      for (final disks in markables)
        [
          for (final _ in disks) 0,
        ],
    ];
    notifyListeners();
  }

  void setWorkspaceIndex(int workspaceIndex) {
    currentWorkspaceIndex = workspaceIndex;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a blue toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            for (int i = 0; i < numWorkspaces; ++i)
              if (i == appState.currentWorkspaceIndex)
                FilledButton.tonal(
                  onPressed: () => setState(() {
                    appState.setWorkspaceIndex(i);
                  }),
                  child: Text("${i + 1}"),
                )
              else
                TextButton(
                  onPressed: () => setState(() {
                    appState.setWorkspaceIndex(i);
                  }),
                  child: Text("${i + 1}"),
                ),
            Expanded(child: Container()),
            if (_currentPageIndex == 0)
              TextButton.icon(
                onPressed: () => setState(() {
                  _currentPageIndex = 1;
                }),
                icon: const Icon(Icons.draw),
                label: const Text("標記"),
              )
            else
              TextButton.icon(
                onPressed: () => setState(() {
                  _currentPageIndex = 0;
                }),
                icon: const Icon(Icons.list_alt),
                label: const Text("卡序表"),
              ),
            IconButton(
              onPressed: () => appState.clearMarked(),
              icon: const Icon(Icons.format_color_reset),
              tooltip: "清空",
            )
          ],
        ),
      ),
      body: IndexedStack(
        index: _currentPageIndex,
        children: const [
          TablePage(),
          MarkPage(),
        ],
      ),
    );
  }
}

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    final appState = context.watch<MyAppState>();
    final marked = appState.getMarked();
    var markedDisks = <String, int>{};
    for (int i = 0; i < markables.length; ++i) {
      for (int j = 0; j < markables[i].length; ++j) {
        if (marked[i][j] > 0) {
          markedDisks[markables[i][j]] = marked[i][j];
        }
      }
    }

    final markColors = [
      null,
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).colorScheme.tertiary,
    ];
    final markTextColors = [
      null,
      Theme.of(context).colorScheme.onPrimary,
      Theme.of(context).colorScheme.onSecondary,
      Theme.of(context).colorScheme.onTertiary,
    ];

    return Zoom(
      backgroundColor: Colors.transparent,
      canvasColor: Colors.transparent,
      initTotalZoomOut: true,
      child: SizeChangedLayoutNotifier(
        child: DataTable(
          columnSpacing: 16.0,
          dataRowMinHeight: 0.0,
          dataRowMaxHeight: 32.0,
          columns: [
            const DataColumn(
              label: Text(
                '#',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              numeric: true,
            ),
            for (int i = 0; i < diskOrders.length; ++i)
              DataColumn(
                label: Text(
                  String.fromCharCode('A'.runes.single + i),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
          ],
          rows: [
            for (int i = 0; i < diskOrders[0].length; ++i)
              DataRow(cells: [
                DataCell(Text('${i + 1}')),
                for (int j = 0; j < diskOrders.length; ++j)
                  DataCell(
                    SizedBox.expand(
                      child: Container(
                        alignment: AlignmentDirectional.centerStart,
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: markColors[markedDisks[diskOrders[j][i]] ?? 0],
                          border: purpleFiveStars.contains(diskOrders[j][i])
                              ? Border.all(
                                  color: Colors.purpleAccent,
                                  width: 2.0,
                                )
                              : redFiveStars.contains(diskOrders[j][i])
                                  ? Border.all(
                                      color: Colors.red,
                                      width: 2.0,
                                    )
                                  : null,
                        ),
                        child: Text(
                          diskOrders[j][i],
                          style: markedDisks.containsKey(diskOrders[j][i])
                              ? TextStyle(
                                  color: markTextColors[
                                      markedDisks[diskOrders[j][i]] ?? 0],
                                  fontWeight: FontWeight.bold,
                                )
                              : null,
                        ),
                      ),
                    ),
                  ),
              ]),
          ],
        ),
      ),
    );
  }
}

class MarkPage extends StatelessWidget {
  const MarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    final marked = appState.getMarked();

    final markColors = [
      null,
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).colorScheme.tertiary,
    ];
    final markTextColors = [
      null,
      Theme.of(context).colorScheme.onPrimary,
      Theme.of(context).colorScheme.onSecondary,
      Theme.of(context).colorScheme.onTertiary,
    ];

    return ListView(
      children: [
        for (int i = 0; i < markables.length; ++i) ...[
          const Divider(),
          GridView.extent(
            maxCrossAxisExtent: 150.0,
            childAspectRatio: 2,
            padding: const EdgeInsets.all(8.0),
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              for (int j = 0; j < markables[i].length; ++j)
                if (marked[i][j] > 0)
                  FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: markColors[marked[i][j]],
                      foregroundColor: markTextColors[marked[i][j]],
                    ),
                    onPressed: () =>
                        appState.setMarked(i, j, (marked[i][j] + 1) % 4),
                    child: Text(
                      markables[i][j],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                else
                  OutlinedButton(
                    onPressed: () =>
                        appState.setMarked(i, j, (marked[i][j] + 1) % 4),
                    child: Text(markables[i][j]),
                  ),
            ],
          ),
        ],
      ],
    );
  }
}

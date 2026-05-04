import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPorto',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFFAFBFC),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6366F1),
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF6366F1),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final Map<String, bool> clickedButtons = {
    'Counter': false,
    'Widget Bertingkat': false,
    'User Input': false,
    'Dynamic List': false,
    'Navigasi': false,
    'Grid View': false,
  };

  @override
  Widget build(BuildContext context) {
    final completedCount = clickedButtons.values.where((value) => value).length;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFAFBFC), Color(0xFFF0F4FF)],
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 220,
              floating: true,
              pinned: true,
              stretch: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                titlePadding: const EdgeInsets.only(bottom: 20),
                title: const Text(
                  'MyPorto',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    letterSpacing: 1.2,
                    color: Colors.white,
                  ),
                ),
                background: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 30,
                        right: -50,
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.12),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        left: -40,
                        bottom: -30,
                        child: Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.08),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18, 20, 18, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFFFFFFF), Color(0xFFF5F7FF)],
                        ),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xFF6366F1).withValues(alpha: 0.15),
                          width: 1.5,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF6366F1).withValues(alpha: 0.08),
                            blurRadius: 24,
                            offset: const Offset(0, 12),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Halo, Selamat Datang! 👋',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF1F2937),
                              letterSpacing: 0.5,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Jelajahi portofolio interaktif dengan teknologi Flutter modern dan desain premium.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF6B7280),
                              height: 1.7,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 8),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xFF6366F1).withValues(alpha: 0.3),
                                  blurRadius: 12,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.check_circle,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '$completedCount Telah Dikunjungi',
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'Fitur Unggulan',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF1F2937),
                        letterSpacing: 0.3,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Temukan berbagai fitur interaktif yang menakjubkan',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF6B7280),
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildCard('Counter', Icons.calculate_outlined, 'Aplikasi penghitung dengan desain modern', const CounterPage(), const LinearGradient(colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)])),
                    _buildCard('Widget Bertingkat', Icons.layers_outlined, 'Pelajari struktur widget yang kompleks', const NestedWidgetPage(), const LinearGradient(colors: [Color(0xFF10B981), Color(0xFF059669)])),
                    _buildCard('User Input', Icons.edit_note_outlined, 'Form input yang elegan dan responsif', const UserInputPage(), const LinearGradient(colors: [Color(0xFFF59E0B), Color(0xFFD97706)])),
                    _buildCard('Dynamic List', Icons.list_alt_outlined, 'Kelola daftar dinamis dengan interaktif', const DynamicListPage(), const LinearGradient(colors: [Color(0xFFEC4899), Color(0xFFBE185D)])),
                    _buildCard('Navigasi', Icons.navigation_outlined, 'Sistem navigasi halaman yang intuitif', const SimpleNavigationPage(), const LinearGradient(colors: [Color(0xFF3B82F6), Color(0xFF1D4ED8)])),
                    _buildCard('Grid View', Icons.grid_on_outlined, 'Tampilan data dalam bentuk grid menarik', const GridViewPage(), const LinearGradient(colors: [Color(0xFF14B8A6), Color(0xFF0D9488)])),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AboutMePage())),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)]),
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [BoxShadow(color: const Color(0xFF6366F1).withValues(alpha: 0.3), blurRadius: 20, offset: const Offset(0, 10))],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.person_outline, color: Colors.white, size: 22),
                            SizedBox(width: 10),
                            Text('Tentang Saya', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, IconData icon, String subtitle, Widget page, Gradient gradient) {
    bool isClicked = clickedButtons[title] ?? false;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: isClicked ? [gradient.colors[0], gradient.colors[1]] : [Color(0xFFFFFFFF), Color(0xFFF8FAFF)],
          ),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: isClicked ? gradient.colors[0].withValues(alpha: 0.3) : Colors.grey.withValues(alpha: 0.1),
            width: 1.5,
          ),
          boxShadow: [BoxShadow(color: isClicked ? gradient.colors[0].withValues(alpha: 0.2) : Colors.grey.withValues(alpha: 0.08), blurRadius: 20, offset: const Offset(0, 8))],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              setState(() => clickedButtons[title] = true);
              Navigator.push(context, MaterialPageRoute(builder: (_) => page));
            },
            borderRadius: BorderRadius.circular(18),
            splashColor: gradient.colors[0].withValues(alpha: 0.15),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: gradient,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [BoxShadow(color: gradient.colors[0].withValues(alpha: 0.2), blurRadius: 16, offset: const Offset(0, 4))],
                    ),
                    child: Icon(icon, color: Colors.white, size: 30),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: isClicked ? Colors.white : Color(0xFF1F2937))),
                        const SizedBox(height: 6),
                        Text(subtitle, style: TextStyle(fontSize: 13, color: isClicked ? Colors.white70 : Color(0xFF6B7280), height: 1.5), maxLines: 1, overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(color: isClicked ? Colors.white.withValues(alpha: 0.25) : Colors.grey.withValues(alpha: 0.08), borderRadius: BorderRadius.circular(12)),
                    child: Icon(Icons.arrow_forward_ios_rounded, size: 16, color: isClicked ? Colors.white : Color(0xFF9CA3AF)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Counter Page
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFFFAFBFC), Color(0xFFF0F4FF)])),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)])),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(padding: const EdgeInsets.all(8), decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.25), borderRadius: BorderRadius.circular(10)), child: const Icon(Icons.arrow_back_rounded, color: Colors.white, size: 24)),
                      ),
                      const SizedBox(width: 14),
                      const Text('Counter', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 0.5)),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)]),
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color: const Color(0xFF6366F1).withValues(alpha: 0.4), blurRadius: 28, offset: const Offset(0, 12))],
                      ),
                      child: Center(child: Text('$_counter', style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 2))),
                    ),
                    const SizedBox(height: 40),
                    const Text('Anda telah menekan tombol:', style: TextStyle(fontSize: 15, color: Color(0xFF6B7280), fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10),
                    Text('$_counter kali', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: Color(0xFF6366F1), letterSpacing: 0.5)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: FloatingActionButton.extended(
                onPressed: () => setState(() => _counter++),
                backgroundColor: const Color(0xFF6366F1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                icon: const Icon(Icons.add_rounded, size: 30, color: Colors.white),
                label: const Text('Tambah', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Nested Widget Page
class NestedWidgetPage extends StatelessWidget {
  const NestedWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF10B981),
        title: const Text('Widget Bertingkat', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(icon: const Icon(Icons.arrow_back_rounded), onPressed: () => Navigator.pop(context)),
      ),
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFFFAFBFC), Color(0xFFF0F4FF)])),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Struktur Nested Widget', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Color(0xFF1F2937))),
              const SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Color(0xFF10B981), Color(0xFF059669)]),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [BoxShadow(color: const Color(0xFF10B981).withValues(alpha: 0.3), blurRadius: 16, offset: const Offset(0, 8))],
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.15), borderRadius: BorderRadius.circular(14)),
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        children: [
                          Row(children: [Container(width: 10, height: 10, decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.8), shape: BoxShape.circle)), const SizedBox(width: 10), const Text('Outer Container', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15))]),
                          const SizedBox(height: 18),
                          Container(
                            decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.18), borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Row(children: [Container(width: 8, height: 8, decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.7), shape: BoxShape.circle)), const SizedBox(width: 8), const Text('Middle Container', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w700, fontSize: 14))]),
                                const SizedBox(height: 14),
                                Container(
                                  decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.24), borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.all(14),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [Icon(Icons.check_circle_outline_rounded, color: Colors.white60, size: 18), SizedBox(width: 8), Text('Inner Container', style: TextStyle(color: Colors.white60, fontWeight: FontWeight.w700, fontSize: 13))]),
                                      SizedBox(height: 10),
                                      Text('Ini adalah widget paling dalam dari struktur berlapis yang menunjukkan konsep nesting widget dalam Flutter.', style: TextStyle(color: Colors.white54, fontSize: 12, height: 1.6)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// User Input Page
class UserInputPage extends StatefulWidget {
  const UserInputPage({super.key});

  @override
  State<UserInputPage> createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String _displayText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF59E0B),
        title: const Text('User Input', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        leading: IconButton(icon: const Icon(Icons.arrow_back_rounded, color: Colors.white), onPressed: () => Navigator.pop(context)),
      ),
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFFFAFBFC), Color(0xFFF0F4FF)])),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Masukkan Data Anda', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800, color: Color(0xFF1F2937))),
              const SizedBox(height: 24),
              _buildInputField('Nama', Icons.person_outline, 'Masukkan nama', _nameController),
              const SizedBox(height: 16),
              _buildInputField('Email', Icons.email_outlined, 'Masukkan email', _emailController),
              const SizedBox(height: 32),
              GestureDetector(
                onTap: () => setState(() => _displayText = 'Nama: ${_nameController.text}\nEmail: ${_emailController.text}'),
                child: Container(
                  decoration: BoxDecoration(gradient: const LinearGradient(colors: [Color(0xFFF59E0B), Color(0xFFD97706)]), borderRadius: BorderRadius.circular(16), boxShadow: [BoxShadow(color: const Color(0xFFF59E0B).withValues(alpha: 0.3), blurRadius: 16, offset: const Offset(0, 8))]),
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [Icon(Icons.send_rounded, color: Colors.white, size: 22), SizedBox(width: 10), Text('Submit', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white))]),
                ),
              ),
              if (_displayText.isNotEmpty) ...[
                const SizedBox(height: 32),
                Container(
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [Color(0xFFECF8F0), Color(0xFFDCF8EA)]),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: const Color(0xFF10B981).withValues(alpha: 0.3), width: 2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [Container(padding: const EdgeInsets.all(10), decoration: BoxDecoration(gradient: const LinearGradient(colors: [Color(0xFF10B981), Color(0xFF059669)]), borderRadius: BorderRadius.circular(10)), child: const Icon(Icons.check_circle_rounded, color: Colors.white, size: 22)), const SizedBox(width: 12), const Text('Data Berhasil Disimpan', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Color(0xFF10B981)))]),
                      const SizedBox(height: 16),
                      Text(_displayText, style: const TextStyle(fontSize: 14, color: Color(0xFF10B981), fontWeight: FontWeight.w500, height: 2)),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String label, IconData icon, String hint, TextEditingController controller) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.withValues(alpha: 0.15), width: 1.5),
        boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.08), blurRadius: 12, offset: const Offset(0, 2))],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          prefixIcon: Icon(icon, color: const Color(0xFFF59E0B)),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          labelStyle: const TextStyle(color: Color(0xFFF59E0B), fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}

// Dynamic List Page
class DynamicListPage extends StatefulWidget {
  const DynamicListPage({super.key});

  @override
  State<DynamicListPage> createState() => _DynamicListPageState();
}

class _DynamicListPageState extends State<DynamicListPage> {
  final List<String> _items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFEC4899),
        title: const Text('Dynamic List', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        leading: IconButton(icon: const Icon(Icons.arrow_back_rounded, color: Colors.white), onPressed: () => Navigator.pop(context)),
      ),
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFFFAFBFC), Color(0xFFF0F4FF)])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14), border: Border.all(color: Colors.grey.withValues(alpha: 0.15), width: 1.5)),
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          labelText: 'Tambah Item',
                          prefixIcon: const Icon(Icons.add_circle_outline_rounded, color: Color(0xFFEC4899)),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                          labelStyle: const TextStyle(color: Color(0xFFEC4899), fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {
                      if (_controller.text.isNotEmpty) {
                        setState(() {
                          _items.add(_controller.text);
                          _controller.clear();
                        });
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(gradient: const LinearGradient(colors: [Color(0xFFEC4899), Color(0xFFBE185D)]), borderRadius: BorderRadius.circular(14)),
                      child: const Icon(Icons.add_rounded, color: Colors.white, size: 26),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _items.isEmpty
                  ? Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: const [Icon(Icons.inbox_rounded, size: 60, color: Color(0xFF9CA3AF)), SizedBox(height: 16), Text('Belum ada item', style: TextStyle(color: Color(0xFF9CA3AF), fontSize: 16, fontWeight: FontWeight.w500))]))
                  : ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: const Color(0xFFEC4899).withValues(alpha: 0.15), width: 1.5),
                            ),
                            child: ListTile(
                              leading: Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(gradient: LinearGradient(colors: [Color(0xFFEC4899), Color(0xFFBE185D)]), shape: BoxShape.circle),
                                child: Center(child: Text('${index + 1}', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16))),
                              ),
                              title: Text(_items[index], style: const TextStyle(color: Color(0xFF1F2937), fontWeight: FontWeight.w600, fontSize: 15)),
                              trailing: IconButton(
                                icon: const Icon(Icons.delete_rounded, color: Color(0xFFEC4899), size: 24),
                                onPressed: () => setState(() => _items.removeAt(index)),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

// Simple Navigation Page
class SimpleNavigationPage extends StatefulWidget {
  const SimpleNavigationPage({super.key});

  @override
  State<SimpleNavigationPage> createState() => _SimpleNavigationPageState();
}

class _SimpleNavigationPageState extends State<SimpleNavigationPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      _buildPageContent('Home', Icons.home_rounded, const Color(0xFF3B82F6)),
      _buildPageContent('Profil', Icons.person_rounded, const Color(0xFF3B82F6)),
      _buildPageContent('Pengaturan', Icons.settings_rounded, const Color(0xFF3B82F6)),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3B82F6),
        title: const Text('Navigasi Sederhana', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(icon: const Icon(Icons.arrow_back_rounded), onPressed: () => Navigator.pop(context)),
      ),
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFFFAFBFC), Color(0xFFF0F4FF)])),
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF3B82F6),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home_rounded), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), activeIcon: Icon(Icons.person_rounded), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), activeIcon: Icon(Icons.settings_rounded), label: 'Pengaturan'),
        ],
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }

  Widget _buildPageContent(String title, IconData icon, Color color) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(gradient: LinearGradient(colors: [color, Color.fromARGB(255, color.red ~/ 2, color.green ~/ 2, color.blue ~/ 2)]), shape: BoxShape.circle),
            child: Icon(icon, size: 60, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Text('Halaman $title', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF1F2937))),
          const SizedBox(height: 12),
          Text('Konten halaman $title', style: const TextStyle(fontSize: 14, color: Color(0xFF6B7280))),
        ],
      ),
    );
  }
}

// Grid View Page
class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> gridItems = List.generate(12, (index) => 'Item ${index + 1}');
    final gradients = [
      const LinearGradient(colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)]),
      const LinearGradient(colors: [Color(0xFF10B981), Color(0xFF059669)]),
      const LinearGradient(colors: [Color(0xFFF59E0B), Color(0xFFD97706)]),
      const LinearGradient(colors: [Color(0xFFEC4899), Color(0xFFBE185D)]),
      const LinearGradient(colors: [Color(0xFF3B82F6), Color(0xFF1D4ED8)]),
      const LinearGradient(colors: [Color(0xFF14B8A6), Color(0xFF0D9488)]),
      const LinearGradient(colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)]),
      const LinearGradient(colors: [Color(0xFF10B981), Color(0xFF059669)]),
      const LinearGradient(colors: [Color(0xFFF59E0B), Color(0xFFD97706)]),
      const LinearGradient(colors: [Color(0xFFEC4899), Color(0xFFBE185D)]),
      const LinearGradient(colors: [Color(0xFF3B82F6), Color(0xFF1D4ED8)]),
      const LinearGradient(colors: [Color(0xFF14B8A6), Color(0xFF0D9488)]),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF14B8A6),
        title: const Text('Grid View', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(icon: const Icon(Icons.arrow_back_rounded), onPressed: () => Navigator.pop(context)),
      ),
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFFFAFBFC), Color(0xFFF0F4FF)])),
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 14, mainAxisSpacing: 14),
          itemCount: gridItems.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                gradient: gradients[index % gradients.length],
                borderRadius: BorderRadius.circular(16),
                boxShadow: [BoxShadow(color: gradients[index % gradients.length].colors[0].withValues(alpha: 0.3), blurRadius: 16, offset: const Offset(0, 8))],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(16),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(padding: const EdgeInsets.all(10), decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.25), shape: BoxShape.circle), child: const Icon(Icons.grid_on_rounded, color: Colors.white, size: 26)),
                        const SizedBox(height: 10),
                        Text(gridItems[index], textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 13)),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// About Me Page
class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6366F1),
        title: const Text('Tentang Saya', style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(icon: const Icon(Icons.arrow_back_rounded), onPressed: () => Navigator.pop(context)),
      ),
      body: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xFFFAFBFC), Color(0xFFF0F4FF)])),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)]),
                  boxShadow: [BoxShadow(color: const Color(0xFF6366F1).withValues(alpha: 0.4), blurRadius: 24, offset: const Offset(0, 12))],
                ),
                padding: const EdgeInsets.all(3),
                child: ClipOval(
                  child: Image.asset('assets/images/21.jpeg', width: 144, height: 144, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 40),
              _buildInfoCard('NPM', '20241320068', Icons.badge_rounded, const LinearGradient(colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)])),
              const SizedBox(height: 18),
              _buildInfoCard('Nama', 'Nabil Ramadhan', Icons.person_outline_rounded, const LinearGradient(colors: [Color(0xFF10B981), Color(0xFF059669)])),
              const SizedBox(height: 36),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [Color(0xFFFFFFFF), Color(0xFFF5F7FF)]),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: const Color(0xFF6366F1).withValues(alpha: 0.15), width: 1.5),
                  boxShadow: [BoxShadow(color: const Color(0xFF6366F1).withValues(alpha: 0.1), blurRadius: 16, offset: const Offset(0, 8))],
                ),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(padding: const EdgeInsets.all(10), decoration: BoxDecoration(gradient: const LinearGradient(colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)]), borderRadius: BorderRadius.circular(10)), child: const Icon(Icons.info_rounded, color: Colors.white, size: 22)), const SizedBox(width: 12), const Text('Tentang Saya', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF6366F1)))]),
                    const SizedBox(height: 18),
                    Text(
                      'Saya adalah seorang mahasiswa Program Studi Sistem Informasi di sebuah Universitas Kebangsaan Republik Indonesia. Aplikasi ini menunjukkan kemampuan saya dalam mengembangkan aplikasi mobile dengan Flutter yang modern dan user-friendly.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey[700], height: 1.9),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String value, IconData icon, Gradient gradient) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Color(0xFFFFFFFF), Color(0xFFF5F7FF)]),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.withValues(alpha: 0.1), width: 1.5),
        boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.08), blurRadius: 16, offset: const Offset(0, 8))],
      ),
      child: Row(
        children: [
          Container(padding: const EdgeInsets.all(14), decoration: BoxDecoration(gradient: gradient, borderRadius: BorderRadius.circular(14)), child: Icon(icon, color: Colors.white, size: 26)),
          const SizedBox(width: 18),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xFF9CA3AF), letterSpacing: 0.5)),
                const SizedBox(height: 8),
                Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Color(0xFF1F2937))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

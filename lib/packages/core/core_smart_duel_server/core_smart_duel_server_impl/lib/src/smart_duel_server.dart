import 'package:injectable/injectable.dart';
import 'package:smart_duel_disk/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:smart_duel_disk/packages/core/core_logger/core_logger_interface/lib/core_logger_interface.dart';
import 'package:smart_duel_disk/packages/core/core_smart_duel_server/core_smart_duel_server_interface/lib/core_smart_duel_server_interface.dart';
import 'package:smart_duel_disk/packages/wrappers/wrapper_web_socket/wrapper_web_socket_interface/lib/wrapper_web_socket_interface.dart';

@LazySingleton(as: SmartDuelServer)
class SmartDuelServerImpl implements SmartDuelServer {
  static const _tag = 'SmartDuelServerImpl';

  final WebSocketFactory _webSocketFactory;
  final DataManager _dataManager;
  final Logger _logger;

  WebSocketProvider _socket;

  SmartDuelServerImpl(
    this._webSocketFactory,
    this._dataManager,
    this._logger,
  );

  @override
  void init() {
    _logger.info(_tag, 'init()');

    if (_socket != null) {
      throw Exception('There is already a socket that has not been closed yet!');
    }

    _socket = _webSocketFactory.createWebSocketProvider(_dataManager.getConnectionInfo());
    _socket.init();
  }

  @override
  void emitSpeedDuelEvent(SmartDuelEvent event) {
    _logger.info(_tag, 'emitSpeedDuelEvent(event: $event)');

    _socket.emitEvent('${event.scope}:${event.action}', event.data.toJson());
  }

  @override
  void dispose() {
    _socket?.dispose();
    _socket = null;
  }
}

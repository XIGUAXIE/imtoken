.class public interface abstract Lcom/ftsafe/bluetooth/key/jkey/IFTBluetoothKeyInterface;
.super Ljava/lang/Object;


# static fields
.field public static final FT_COMMTYPE_BT3:I = 0x3

.field public static final FT_COMMTYPE_BT4:I = 0x4


# virtual methods
.method public abstract ftBTKeyComm_CheckBtEnv(Z)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
.end method

.method public abstract ftBTKeyComm_Connect(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;ILcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
.end method

.method public abstract ftBTKeyComm_ConnectDirectly(ILjava/lang/String;ILcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
.end method

.method public abstract ftBTKeyComm_Disconnect(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
.end method

.method public abstract ftBTKeyComm_Finalize()V
.end method

.method public abstract ftBTKeyComm_GetLibVersion()Ljava/lang/String;
.end method

.method public abstract ftBTKeyComm_Initialize()Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
.end method

.method public abstract ftBTKeyComm_SendAndRecvAsync(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;[BIILcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
.end method

.method public abstract ftBTKeyComm_SetLibLanguage(Ljava/util/Locale;)V
.end method

.method public abstract ftBTKeyComm_StartScan(IILcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
.end method

.method public abstract ftBTKeyComm_StopScan()V
.end method

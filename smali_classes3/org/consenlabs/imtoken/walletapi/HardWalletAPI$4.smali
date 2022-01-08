.class Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$4;
.super Ljava/lang/Object;
.source "HardWalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->stopScan(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$4;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 310
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    invoke-virtual {v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->stopScan()V

    .line 311
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

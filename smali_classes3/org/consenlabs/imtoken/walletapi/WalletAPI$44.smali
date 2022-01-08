.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$44;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->getChannel(Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;)V
    .locals 0

    .line 1328
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$44;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 1331
    invoke-static {}, Lorg/consenlabs/imtoken/MainApplication;->getsInstance()Lorg/consenlabs/imtoken/MainApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/meituan/android/walle/WalleChannelReader;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

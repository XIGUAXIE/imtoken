.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$8;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->generateMnemonic(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 230
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$8;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 233
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/WalletManager;->generateMnemonic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$6;
.super Ljava/lang/Object;
.source "HardWalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->disconnect(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

.field final synthetic val$map:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$6;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$6;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 365
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$6;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "imKeyAddress"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$6;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$400(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->disconnect()V

    .line 372
    :cond_0
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

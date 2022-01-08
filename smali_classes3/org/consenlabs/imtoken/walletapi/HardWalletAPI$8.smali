.class Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$8;
.super Ljava/lang/Object;
.source "HardWalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->callImKeyApi(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

.field final synthetic val$hex:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Ljava/lang/String;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$8;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$8;->val$hex:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 408
    :try_start_0
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;

    .line 410
    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->imkey_clear_err()V

    .line 412
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$8;->val$hex:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->call_imkey_api(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->imkey_get_last_err_message()Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-interface {v0, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->imkey_free_const_string(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-interface {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->imkey_free_const_string(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    .line 422
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-direct {v0, v3}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lim/imkey/imkeylibrary/exception/ImkeyException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 427
    new-instance v1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    invoke-virtual {v0}, Lim/imkey/imkeylibrary/exception/ImkeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

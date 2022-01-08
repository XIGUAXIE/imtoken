.class Lorg/consenlabs/imtoken/walletapi/TcxAPI$2;
.super Ljava/lang/Object;
.source "TcxAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/TcxAPI;->callTcxApi(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/walletapi/TcxAPI;

.field final synthetic val$hex:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/walletapi/TcxAPI;Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$2;->this$0:Lorg/consenlabs/imtoken/walletapi/TcxAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$2;->val$hex:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7

    .line 79
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$2;->val$hex:Ljava/lang/String;

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 82
    :try_start_0
    invoke-static {v0}, Lorg/consenlabs/imtoken/tcx/Api$TcxAction;->parseFrom([B)Lorg/consenlabs/imtoken/tcx/Api$TcxAction;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$TcxAction;->getMethod()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "get_derived_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "cache_derived_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "delete_derived_key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v3, "check_biometric_mode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    .line 98
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$2;->this$0:Lorg/consenlabs/imtoken/walletapi/TcxAPI;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$2;->val$hex:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->access$500(Lorg/consenlabs/imtoken/walletapi/TcxAPI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$2;->this$0:Lorg/consenlabs/imtoken/walletapi/TcxAPI;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$TcxAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Any;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->access$400(Lorg/consenlabs/imtoken/walletapi/TcxAPI;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_2
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$2;->this$0:Lorg/consenlabs/imtoken/walletapi/TcxAPI;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$TcxAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Any;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->access$300(Lorg/consenlabs/imtoken/walletapi/TcxAPI;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_3
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$2;->this$0:Lorg/consenlabs/imtoken/walletapi/TcxAPI;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$TcxAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Any;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->access$200(Lorg/consenlabs/imtoken/walletapi/TcxAPI;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :cond_4
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$2;->this$0:Lorg/consenlabs/imtoken/walletapi/TcxAPI;

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->access$100(Lorg/consenlabs/imtoken/walletapi/TcxAPI;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :catch_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "invalid_tcx_param"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x46758f1f -> :sswitch_3
        -0x397c3757 -> :sswitch_2
        0x60d2e800 -> :sswitch_1
        0x725ea9d4 -> :sswitch_0
    .end sparse-switch
.end method

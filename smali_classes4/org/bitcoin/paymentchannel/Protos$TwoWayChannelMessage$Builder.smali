.class public final Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersion;",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

.field private errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$Error;",
            "Lorg/bitcoin/paymentchannel/Protos$Error$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private error_:Lorg/bitcoin/paymentchannel/Protos$Error;

.field private initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$Initiate;",
            "Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

.field private paymentAckBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$PaymentAck;",
            "Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$PaymentAckOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

.field private provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContract;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

.field private provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

.field private returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

.field private serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersion;",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

.field private settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$Settlement;",
            "Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

.field private type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field private updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1165
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1496
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 1555
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1707
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1823
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1939
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 2055
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2171
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2287
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2403
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    .line 2519
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2635
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 1166
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 1171
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1496
    sget-object p1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 1555
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1707
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1823
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1939
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 2055
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2171
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2287
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2403
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    .line 2519
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2635
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 1172
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 1148
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1148
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1189
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;-><init>()V

    return-object v0
.end method

.method private getClientVersionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersion;",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1696
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1697
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 1699
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v1

    .line 1700
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 1701
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 1702
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1704
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1154
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getErrorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$Error;",
            "Lorg/bitcoin/paymentchannel/Protos$Error$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2740
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2741
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 2743
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v1

    .line 2744
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 2745
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 2746
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2748
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getInitiateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$Initiate;",
            "Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1928
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1929
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 1931
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v1

    .line 1932
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 1933
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 1934
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1936
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getPaymentAckFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$PaymentAck;",
            "Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$PaymentAckOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2508
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAckBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2509
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 2511
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getPaymentAck()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v1

    .line 2512
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 2513
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAckBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 2514
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    .line 2516
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAckBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getProvideContractFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContract;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2276
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2277
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 2279
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v1

    .line 2280
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 2281
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 2282
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2284
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getProvideRefundFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2044
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2045
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 2047
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v1

    .line 2048
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 2049
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 2050
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 2052
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getReturnRefundFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2160
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2161
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 2163
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v1

    .line 2164
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 2165
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 2166
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2168
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getServerVersionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersion;",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1812
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1813
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 1815
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v1

    .line 1816
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 1817
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 1818
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1820
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getSettlementFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$Settlement;",
            "Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2624
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2625
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 2627
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v1

    .line 2628
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 2629
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 2630
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2632
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getUpdatePaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2392
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2393
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    .line 2395
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v1

    .line 2396
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    .line 2397
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    .line 2398
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2400
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1175
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getClientVersionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1177
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getServerVersionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1178
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getInitiateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1179
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideRefundFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1180
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getReturnRefundFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1181
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideContractFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1182
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getUpdatePaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1183
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getPaymentAckFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1184
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getSettlementFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1185
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getErrorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 2

    .line 1273
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    .line 1274
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1275
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 5

    .line 1281
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 1282
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1287
    :goto_0
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$702(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 1291
    :cond_1
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_2

    .line 1292
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$802(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    goto :goto_1

    .line 1294
    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$802(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    :goto_1
    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 1299
    :cond_3
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_4

    .line 1300
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$902(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    goto :goto_2

    .line 1302
    :cond_4
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$902(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    :goto_2
    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x8

    .line 1307
    :cond_5
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_6

    .line 1308
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1002(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate;

    goto :goto_3

    .line 1310
    :cond_6
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1002(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate;

    :goto_3
    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x10

    .line 1315
    :cond_7
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_8

    .line 1316
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1102(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    goto :goto_4

    .line 1318
    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1102(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    :goto_4
    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_9

    or-int/lit8 v3, v3, 0x20

    .line 1323
    :cond_9
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_a

    .line 1324
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1202(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    goto :goto_5

    .line 1326
    :cond_a
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1202(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    :goto_5
    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_b

    or-int/lit8 v3, v3, 0x40

    .line 1331
    :cond_b
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_c

    .line 1332
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1302(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    goto :goto_6

    .line 1334
    :cond_c
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1302(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    :goto_6
    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_d

    or-int/lit16 v3, v3, 0x80

    .line 1339
    :cond_d
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_e

    .line 1340
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1402(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_7

    .line 1342
    :cond_e
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1402(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    :goto_7
    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_f

    or-int/lit16 v3, v3, 0x100

    .line 1347
    :cond_f
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAckBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_10

    .line 1348
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1502(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    goto :goto_8

    .line 1350
    :cond_10
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1502(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    :goto_8
    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_11

    or-int/lit16 v3, v3, 0x200

    .line 1355
    :cond_11
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v2, :cond_12

    .line 1356
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1602(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement;

    goto :goto_9

    .line 1358
    :cond_12
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1602(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement;

    :goto_9
    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    or-int/lit16 v3, v3, 0x400

    .line 1363
    :cond_13
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v1, :cond_14

    .line 1364
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-static {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1702(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error;

    goto :goto_a

    .line 1366
    :cond_14
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v1

    check-cast v1, Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-static {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1702(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 1368
    :goto_a
    invoke-static {v0, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->access$1802(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;I)I

    .line 1369
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1193
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1194
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 1195
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1196
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1197
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    goto :goto_0

    .line 1199
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1201
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1202
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1203
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    goto :goto_1

    .line 1205
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1207
    :goto_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1208
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 1209
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    goto :goto_2

    .line 1211
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1213
    :goto_2
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1214
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    .line 1215
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    goto :goto_3

    .line 1217
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1219
    :goto_3
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1220
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_4

    .line 1221
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    goto :goto_4

    .line 1223
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1225
    :goto_4
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1226
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_5

    .line 1227
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    goto :goto_5

    .line 1229
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1231
    :goto_5
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1232
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_6

    .line 1233
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_6

    .line 1235
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1237
    :goto_6
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1238
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAckBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_7

    .line 1239
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    goto :goto_7

    .line 1241
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1243
    :goto_7
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1244
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_8

    .line 1245
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    goto :goto_8

    .line 1247
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1249
    :goto_8
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1250
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_9

    .line 1251
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    goto :goto_9

    .line 1253
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1255
    :goto_9
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearClientVersion()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1651
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1652
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1653
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 1655
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1657
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearError()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2707
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2708
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2709
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2711
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2713
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearInitiate()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1895
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1896
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1897
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 1899
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1901
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearPaymentAck()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2475
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAckBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2476
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    .line 2477
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2479
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2481
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearProvideContract()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2243
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2244
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2245
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2247
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2249
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearProvideRefund()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2011
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2012
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 2013
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2015
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2017
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearReturnRefund()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2127
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2128
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2129
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2131
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2133
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearServerVersion()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1779
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1780
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1781
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 1783
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1785
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearSettlement()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2591
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2592
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2593
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2595
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2597
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1549
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1550
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 1551
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public clearUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2359
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2360
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2361
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2363
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2365
    :goto_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2

    .line 1260
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1

    .line 1576
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1577
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0

    .line 1579
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public getClientVersionBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 1668
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1669
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1670
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getClientVersionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    return-object v0
.end method

.method public getClientVersionOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;
    .locals 1

    .line 1680
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1681
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;

    return-object v0

    .line 1683
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1148
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1

    .line 1269
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1265
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1

    .line 2648
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2649
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0

    .line 2651
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public getErrorBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .line 2720
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2721
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2722
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getErrorFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    return-object v0
.end method

.method public getErrorOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;
    .locals 1

    .line 2728
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2729
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;

    return-object v0

    .line 2731
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1

    .line 1836
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1837
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0

    .line 1839
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public getInitiateBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .line 1908
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1909
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1910
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getInitiateFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    return-object v0
.end method

.method public getInitiateOrBuilder()Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;
    .locals 1

    .line 1916
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1917
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;

    return-object v0

    .line 1919
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public getPaymentAck()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;
    .locals 1

    .line 2416
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAckBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2417
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    return-object v0

    .line 2419
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    return-object v0
.end method

.method public getPaymentAckBuilder()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;
    .locals 1

    .line 2488
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2489
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2490
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getPaymentAckFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    return-object v0
.end method

.method public getPaymentAckOrBuilder()Lorg/bitcoin/paymentchannel/Protos$PaymentAckOrBuilder;
    .locals 1

    .line 2496
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAckBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2497
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$PaymentAckOrBuilder;

    return-object v0

    .line 2499
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    return-object v0
.end method

.method public getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1

    .line 2184
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2185
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0

    .line 2187
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public getProvideContractBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 2256
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2257
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2258
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideContractFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    return-object v0
.end method

.method public getProvideContractOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;
    .locals 1

    .line 2264
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2265
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;

    return-object v0

    .line 2267
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1

    .line 1952
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1953
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0

    .line 1955
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public getProvideRefundBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .line 2024
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2025
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2026
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideRefundFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    return-object v0
.end method

.method public getProvideRefundOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;
    .locals 1

    .line 2032
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2033
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;

    return-object v0

    .line 2035
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1

    .line 2068
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2069
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0

    .line 2071
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public getReturnRefundBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .line 2140
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2141
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2142
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getReturnRefundFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    return-object v0
.end method

.method public getReturnRefundOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;
    .locals 1

    .line 2148
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2149
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;

    return-object v0

    .line 2151
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1

    .line 1720
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1721
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0

    .line 1723
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public getServerVersionBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 1792
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1793
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 1794
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getServerVersionFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    return-object v0
.end method

.method public getServerVersionOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;
    .locals 1

    .line 1800
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1801
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;

    return-object v0

    .line 1803
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1

    .line 2532
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2533
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0

    .line 2535
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public getSettlementBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .line 2604
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2605
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2606
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getSettlementFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    return-object v0
.end method

.method public getSettlementOrBuilder()Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;
    .locals 1

    .line 2612
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2613
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;

    return-object v0

    .line 2615
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public getType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 1

    .line 1519
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object v0
.end method

.method public getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .line 2300
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2301
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0

    .line 2303
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public getUpdatePaymentBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .line 2372
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 2373
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    .line 2374
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getUpdatePaymentFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    return-object v0
.end method

.method public getUpdatePaymentOrBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;
    .locals 1

    .line 2380
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 2381
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;

    return-object v0

    .line 2383
    :cond_0
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public hasClientVersion()Z
    .locals 2

    .line 1566
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasError()Z
    .locals 2

    .line 2642
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInitiate()Z
    .locals 2

    .line 1830
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPaymentAck()Z
    .locals 2

    .line 2410
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProvideContract()Z
    .locals 2

    .line 2178
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProvideRefund()Z
    .locals 2

    .line 1946
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReturnRefund()Z
    .locals 2

    .line 2062
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasServerVersion()Z
    .locals 2

    .line 1714
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSettlement()Z
    .locals 2

    .line 2526
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .line 1507
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasUpdatePayment()Z
    .locals 2

    .line 2294
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 1159
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1160
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1422
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1426
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1432
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasServerVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1433
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1438
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasInitiate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1439
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 1444
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasProvideRefund()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1445
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 1450
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasReturnRefund()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1451
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 1456
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasProvideContract()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1457
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 1462
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasUpdatePayment()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1463
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 1468
    :cond_7
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->hasSettlement()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1469
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public mergeClientVersion(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 3

    .line 1628
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1629
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1630
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1631
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1632
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    goto :goto_0

    .line 1634
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1636
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_1

    .line 1638
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1640
    :goto_1
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeError(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 3

    .line 2688
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x400

    if-nez v0, :cond_1

    .line 2689
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2690
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2691
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2692
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    goto :goto_0

    .line 2694
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2696
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_1

    .line 2698
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2700
    :goto_1
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1148
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1148
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1483
    :try_start_0
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1489
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1485
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1486
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1489
    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1374
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    if-eqz v0, :cond_0

    .line 1375
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    return-object p1

    .line 1377
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1383
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1384
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1385
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1387
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1388
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeClientVersion(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1390
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasServerVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1391
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeServerVersion(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1393
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasInitiate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1394
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1396
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasProvideRefund()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1397
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeProvideRefund(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1399
    :cond_5
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasReturnRefund()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1400
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeReturnRefund(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1402
    :cond_6
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasProvideContract()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1403
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeProvideContract(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1405
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasUpdatePayment()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1406
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeUpdatePayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1408
    :cond_8
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasPaymentAck()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1409
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getPaymentAck()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergePaymentAck(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1411
    :cond_9
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasSettlement()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1412
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeSettlement(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1414
    :cond_a
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasError()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1415
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeError(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 1417
    :cond_b
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public mergeInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 3

    .line 1876
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 1877
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1878
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1879
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1880
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    goto :goto_0

    .line 1882
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1884
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_1

    .line 1886
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1888
    :goto_1
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergePaymentAck(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 3

    .line 2456
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAckBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x100

    if-nez v0, :cond_1

    .line 2457
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    .line 2458
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2459
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    .line 2460
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    goto :goto_0

    .line 2462
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    .line 2464
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_1

    .line 2466
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2468
    :goto_1
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeProvideContract(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 3

    .line 2224
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x40

    if-nez v0, :cond_1

    .line 2225
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2226
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2227
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2228
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    goto :goto_0

    .line 2230
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2232
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_1

    .line 2234
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2236
    :goto_1
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeProvideRefund(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 3

    .line 1992
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x10

    if-nez v0, :cond_1

    .line 1993
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 1994
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1995
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 1996
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    goto :goto_0

    .line 1998
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 2000
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_1

    .line 2002
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2004
    :goto_1
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeReturnRefund(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 3

    .line 2108
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x20

    if-nez v0, :cond_1

    .line 2109
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2110
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2111
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2112
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    goto :goto_0

    .line 2114
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2116
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_1

    .line 2118
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2120
    :goto_1
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeServerVersion(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 3

    .line 1760
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 1761
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1762
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1763
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1764
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    goto :goto_0

    .line 1766
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1768
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_1

    .line 1770
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1772
    :goto_1
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeSettlement(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 3

    .line 2572
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x200

    if-nez v0, :cond_1

    .line 2573
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2574
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2575
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2576
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    goto :goto_0

    .line 2578
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2580
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_1

    .line 2582
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2584
    :goto_1
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeUpdatePayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 3

    .line 2340
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/16 v1, 0x80

    if-nez v0, :cond_1

    .line 2341
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2342
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2343
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2344
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    goto :goto_0

    .line 2346
    :cond_0
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2348
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_1

    .line 2350
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2352
    :goto_1
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setClientVersion(Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1611
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1612
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1613
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 1615
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1617
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setClientVersion(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1590
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1594
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1595
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1592
    throw p1

    .line 1597
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1599
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setError(Lorg/bitcoin/paymentchannel/Protos$Error$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2675
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2676
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2677
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2679
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2681
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setError(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2658
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->errorBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2662
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 2663
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2660
    throw p1

    .line 2665
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2667
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1863
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1864
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1865
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 1867
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1869
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1846
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiateBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1850
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1851
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1848
    throw p1

    .line 1853
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1855
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPaymentAck(Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2443
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAckBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2444
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    .line 2445
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2447
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2449
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setPaymentAck(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2426
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAckBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2430
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    .line 2431
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2428
    throw p1

    .line 2433
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2435
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setProvideContract(Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2211
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2212
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2213
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2215
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2217
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setProvideContract(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2194
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContractBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2198
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 2199
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2196
    throw p1

    .line 2201
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2203
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setProvideRefund(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1979
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1980
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 1981
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 1983
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1985
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setProvideRefund(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1962
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1966
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 1967
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1964
    throw p1

    .line 1969
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1971
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setReturnRefund(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2095
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2096
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2097
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2099
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2101
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setReturnRefund(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2078
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefundBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2082
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 2083
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2080
    throw p1

    .line 2085
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2087
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setServerVersion(Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1747
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1748
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1749
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 1751
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1753
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setServerVersion(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1730
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersionBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1734
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1735
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1732
    throw p1

    .line 1737
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 1739
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setSettlement(Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2559
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2560
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2561
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2563
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2565
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setSettlement(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2542
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlementBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2546
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 2547
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2544
    throw p1

    .line 2549
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2551
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1534
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    .line 1535
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 1536
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1532
    throw p1
.end method

.method public setUpdatePayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2327
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2328
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2329
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    .line 2331
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2333
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

.method public setUpdatePayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 2310
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePaymentBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2314
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 2315
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2312
    throw p1

    .line 2317
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    .line 2319
    :goto_0
    iget p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->bitField0_:I

    return-object p0
.end method

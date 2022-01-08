.class public final Lorg/bitcoin/paymentchannel/Protos;
.super Ljava/lang/Object;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$Error;,
        Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$Settlement;,
        Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$PaymentAck;,
        Lorg/bitcoin/paymentchannel/Protos$PaymentAckOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;,
        Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$ProvideContract;,
        Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;,
        Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;,
        Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$Initiate;,
        Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$ServerVersion;,
        Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$ClientVersion;,
        Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;,
        Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;,
        Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessageOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_paymentchannels_ClientVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_ClientVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_paymentchannels_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_paymentchannels_Initiate_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_Initiate_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_paymentchannels_PaymentAck_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_PaymentAck_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_paymentchannels_ProvideContract_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_ProvideContract_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_paymentchannels_ProvideRefund_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_ProvideRefund_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_paymentchannels_ReturnRefund_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_ReturnRefund_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_paymentchannels_ServerVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_ServerVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_paymentchannels_Settlement_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_Settlement_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_paymentchannels_TwoWayChannelMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_TwoWayChannelMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_paymentchannels_UpdatePayment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_UpdatePayment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\n\u0014paymentchannel.proto\u0012\u000fpaymentchannels\"\u00b0\u0006\n\u0014TwoWayChannelMessage\u0012?\n\u0004type\u0018\u0001 \u0002(\u000e21.paymentchannels.TwoWayChannelMessage.MessageType\u00126\n\u000eclient_version\u0018\u0002 \u0001(\u000b2\u001e.paymentchannels.ClientVersion\u00126\n\u000eserver_version\u0018\u0003 \u0001(\u000b2\u001e.paymentchannels.ServerVersion\u0012+\n\u0008initiate\u0018\u0004 \u0001(\u000b2\u0019.paymentchannels.Initiate\u00126\n\u000eprovide_refund\u0018\u0005 \u0001(\u000b2\u001e.paymentchannels.ProvideRefund\u00124\n\rreturn_refund\u0018\u0006 \u0001(\u000b2\u001d.paymentchannels.ReturnRefund\u0012:\n\u0010"

    const-string v1, "provide_contract\u0018\u0007 \u0001(\u000b2 .paymentchannels.ProvideContract\u00126\n\u000eupdate_payment\u0018\u0008 \u0001(\u000b2\u001e.paymentchannels.UpdatePayment\u00120\n\u000bpayment_ack\u0018\u000b \u0001(\u000b2\u001b.paymentchannels.PaymentAck\u0012/\n\nsettlement\u0018\t \u0001(\u000b2\u001b.paymentchannels.Settlement\u0012%\n\u0005error\u0018\n \u0001(\u000b2\u0016.paymentchannels.Error\"\u00cd\u0001\n\u000bMessageType\u0012\u0012\n\u000eCLIENT_VERSION\u0010\u0001\u0012\u0012\n\u000eSERVER_VERSION\u0010\u0002\u0012\u000c\n\u0008INITIATE\u0010\u0003\u0012\u0012\n\u000ePROVIDE_REFUND\u0010\u0004\u0012\u0011\n\rRETURN_REFUND\u0010\u0005\u0012\u0014\n\u0010PROVIDE_CONTRACT\u0010\u0006\u0012\u0010\n\u000cCHANNEL_OPEN\u0010\u0007\u0012"

    const-string v2, "\u0012\n\u000eUPDATE_PAYMENT\u0010\u0008\u0012\u000f\n\u000bPAYMENT_ACK\u0010\u000b\u0012\t\n\u0005CLOSE\u0010\t\u0012\t\n\u0005ERROR\u0010\n\"y\n\rClientVersion\u0012\r\n\u0005major\u0018\u0001 \u0002(\u0005\u0012\u0010\n\u0005minor\u0018\u0002 \u0001(\u0005:\u00010\u0012&\n\u001eprevious_channel_contract_hash\u0018\u0003 \u0001(\u000c\u0012\u001f\n\u0010time_window_secs\u0018\u0004 \u0001(\u0004:\u000586340\"0\n\rServerVersion\u0012\r\n\u0005major\u0018\u0001 \u0002(\u0005\u0012\u0010\n\u0005minor\u0018\u0002 \u0001(\u0005:\u00010\"r\n\u0008Initiate\u0012\u0014\n\u000cmultisig_key\u0018\u0001 \u0002(\u000c\u0012!\n\u0019min_accepted_channel_size\u0018\u0002 \u0002(\u0004\u0012\u0018\n\u0010expire_time_secs\u0018\u0003 \u0002(\u0004\u0012\u0013\n\u000bmin_payment\u0018\u0004 \u0002(\u0004\"1\n\rProvideRefund\u0012\u0014\n\u000cmultisig_key\u0018\u0001 \u0002(\u000c\u0012\n\n\u0002tx\u0018\u0002 \u0002(\u000c\"!"

    const-string v3, "\n\u000cReturnRefund\u0012\u0011\n\tsignature\u0018\u0001 \u0002(\u000c\"j\n\u000fProvideContract\u0012\n\n\u0002tx\u0018\u0001 \u0002(\u000c\u00127\n\u000finitial_payment\u0018\u0002 \u0002(\u000b2\u001e.paymentchannels.UpdatePayment\u0012\u0012\n\nclient_key\u0018\u0003 \u0001(\u000c\"M\n\rUpdatePayment\u0012\u001b\n\u0013client_change_value\u0018\u0001 \u0002(\u0004\u0012\u0011\n\tsignature\u0018\u0002 \u0002(\u000c\u0012\u000c\n\u0004info\u0018\u0003 \u0001(\u000c\"\u001a\n\nPaymentAck\u0012\u000c\n\u0004info\u0018\u0001 \u0001(\u000c\"\u0018\n\nSettlement\u0012\n\n\u0002tx\u0018\u0003 \u0002(\u000c\"\u00a9\u0002\n\u0005Error\u00125\n\u0004code\u0018\u0001 \u0001(\u000e2 .paymentchannels.Error.ErrorCode:\u0005OTHER\u0012\u0013\n\u000bexplanation\u0018\u0002 \u0001(\t\u0012\u0016\n\u000eexpected_value\u0018\u0003 \u0001(\u0004\"\u00bb\u0001\n\tErrorCode\u0012\u000b"

    const-string v4, "\n\u0007TIMEOUT\u0010\u0001\u0012\u0010\n\u000cSYNTAX_ERROR\u0010\u0002\u0012\u0019\n\u0015NO_ACCEPTABLE_VERSION\u0010\u0003\u0012\u0013\n\u000fBAD_TRANSACTION\u0010\u0004\u0012\u001c\n\u0018TIME_WINDOW_UNACCEPTABLE\u0010\u0005\u0012\u001b\n\u0017CHANNEL_VALUE_TOO_LARGE\u0010\u0006\u0012\u0019\n\u0015MIN_PAYMENT_TOO_LARGE\u0010\u0007\u0012\t\n\u0005OTHER\u0010\u0008B$\n\u001aorg.bitcoin.paymentchannelB\u0006Protos"

    .line 9596
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 9644
    new-instance v1, Lorg/bitcoin/paymentchannel/Protos$1;

    invoke-direct {v1}, Lorg/bitcoin/paymentchannel/Protos$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 9653
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 9657
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_TwoWayChannelMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9658
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Type"

    const-string v3, "ClientVersion"

    const-string v4, "ServerVersion"

    const-string v5, "Initiate"

    const-string v6, "ProvideRefund"

    const-string v7, "ReturnRefund"

    const-string v8, "ProvideContract"

    const-string v9, "UpdatePayment"

    const-string v10, "PaymentAck"

    const-string v11, "Settlement"

    const-string v12, "Error"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_TwoWayChannelMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9663
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ClientVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9664
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Minor"

    const-string v3, "Major"

    const-string v4, "PreviousChannelContractHash"

    const-string v5, "TimeWindowSecs"

    filled-new-array {v3, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ClientVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9669
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ServerVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9670
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ServerVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9675
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Initiate_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9676
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "MultisigKey"

    const-string v3, "MinAcceptedChannelSize"

    const-string v4, "ExpireTimeSecs"

    const-string v5, "MinPayment"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Initiate_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9681
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideRefund_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9682
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Tx"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideRefund_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9687
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ReturnRefund_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9688
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Signature"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ReturnRefund_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9693
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideContract_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9694
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v4, "InitialPayment"

    const-string v5, "ClientKey"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideContract_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9699
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_UpdatePayment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9700
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v4, "Info"

    const-string v5, "ClientChangeValue"

    filled-new-array {v5, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_UpdatePayment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9705
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_PaymentAck_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9706
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_PaymentAck_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9711
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Settlement_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9712
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Settlement_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 9717
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 9718
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Code"

    const-string v3, "Explanation"

    const-string v4, "ExpectedValue"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_TwoWayChannelMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_TwoWayChannelMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Settlement_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Settlement_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$12302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lorg/bitcoin/paymentchannel/Protos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$1900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ClientVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ClientVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ServerVersion_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ServerVersion_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Initiate_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_Initiate_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideRefund_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideRefund_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ReturnRefund_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ReturnRefund_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideContract_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_ProvideContract_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_UpdatePayment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_UpdatePayment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_PaymentAck_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->internal_static_paymentchannels_PaymentAck_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 9591
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method

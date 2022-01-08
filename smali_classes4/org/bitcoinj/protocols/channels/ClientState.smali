.class public final Lorg/bitcoinj/protocols/channels/ClientState;
.super Ljava/lang/Object;
.source "ClientState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;,
        Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;,
        Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;,
        Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelsOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_paymentchannels_StoredClientPaymentChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_StoredClientPaymentChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_paymentchannels_StoredClientPaymentChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_StoredClientPaymentChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "\n storedclientpaymentchannel.proto\u0012\u000fpaymentchannels\"\\\n\u001bStoredClientPaymentChannels\u0012=\n\u0008channels\u0018\u0001 \u0003(\u000b2+.paymentchannels.StoredClientPaymentChannel\"\u0089\u0002\n\u001aStoredClientPaymentChannel\u0012\n\n\u0002id\u0018\u0001 \u0002(\u000c\u0012\u001b\n\u0013contractTransaction\u0018\u0002 \u0002(\u000c\u0012\u0019\n\u0011refundTransaction\u0018\u0003 \u0002(\u000c\u0012\u0013\n\u000bmyPublicKey\u0018\u0008 \u0002(\u000c\u0012\r\n\u0005myKey\u0018\u0004 \u0002(\u000c\u0012\u0011\n\tvalueToMe\u0018\u0005 \u0002(\u0004\u0012\u0012\n\nrefundFees\u0018\u0006 \u0002(\u0004\u0012\u001c\n\u0014closeTransactionHash\u0018\u0007 \u0001(\u000c\u0012\u0017\n\u000cmajorVersion\u0018\t \u0001(\r:\u00011\u0012\u0012\n\nexpiryTime\u0018\n \u0001(\u0004\u0012\u0011\n\tse"

    const-string v1, "rverKey\u0018\u000b \u0001(\u000cB.\n\u001forg.bitcoinj.protocols.channelsB\u000bClientState"

    .line 2165
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2179
    new-instance v1, Lorg/bitcoinj/protocols/channels/ClientState$1;

    invoke-direct {v1}, Lorg/bitcoinj/protocols/channels/ClientState$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2188
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2192
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2193
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Channels"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2198
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2199
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Id"

    const-string v3, "ContractTransaction"

    const-string v4, "RefundTransaction"

    const-string v5, "MyPublicKey"

    const-string v6, "MyKey"

    const-string v7, "ValueToMe"

    const-string v8, "RefundFees"

    const-string v9, "CloseTransactionHash"

    const-string v10, "MajorVersion"

    const-string v11, "ExpiryTime"

    const-string v12, "ServerKey"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

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
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lorg/bitcoinj/protocols/channels/ClientState;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState;->internal_static_paymentchannels_StoredClientPaymentChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 2160
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method

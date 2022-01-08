.class public final Lorg/bitcoinj/protocols/channels/ServerState;
.super Ljava/lang/Object;
.source "ServerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;,
        Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;,
        Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;,
        Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelsOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_paymentchannels_StoredServerPaymentChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_StoredServerPaymentChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_paymentchannels_StoredServerPaymentChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_paymentchannels_StoredServerPaymentChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "\n storedserverpaymentchannel.proto\u0012\u000fpaymentchannels\"\\\n\u001bStoredServerPaymentChannels\u0012=\n\u0008channels\u0018\u0001 \u0003(\u000b2+.paymentchannels.StoredServerPaymentChannel\"\u00e6\u0001\n\u001aStoredServerPaymentChannel\u0012\u0015\n\rbestValueToMe\u0018\u0001 \u0002(\u0004\u0012\u001a\n\u0012bestValueSignature\u0018\u0002 \u0001(\u000c\u0012\'\n\u001frefundTransactionUnlockTimeSecs\u0018\u0003 \u0002(\u0004\u0012\u001b\n\u0013contractTransaction\u0018\u0004 \u0002(\u000c\u0012\u0014\n\u000cclientOutput\u0018\u0005 \u0001(\u000c\u0012\r\n\u0005myKey\u0018\u0006 \u0002(\u000c\u0012\u0017\n\u000cmajorVersion\u0018\u0007 \u0001(\r:\u00011\u0012\u0011\n\tclientKey\u0018\u0008 \u0001(\u000cB.\n\u001forg.bitcoinj.proto"

    const-string v1, "cols.channelsB\u000bServerState"

    .line 1755
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1768
    new-instance v1, Lorg/bitcoinj/protocols/channels/ServerState$1;

    invoke-direct {v1}, Lorg/bitcoinj/protocols/channels/ServerState$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1777
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1781
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/protocols/channels/ServerState;->internal_static_paymentchannels_StoredServerPaymentChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1782
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Channels"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/protocols/channels/ServerState;->internal_static_paymentchannels_StoredServerPaymentChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1787
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoinj/protocols/channels/ServerState;->internal_static_paymentchannels_StoredServerPaymentChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1788
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "BestValueToMe"

    const-string v3, "BestValueSignature"

    const-string v4, "RefundTransactionUnlockTimeSecs"

    const-string v5, "ContractTransaction"

    const-string v6, "ClientOutput"

    const-string v7, "MyKey"

    const-string v8, "MajorVersion"

    const-string v9, "ClientKey"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoinj/protocols/channels/ServerState;->internal_static_paymentchannels_StoredServerPaymentChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

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
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState;->internal_static_paymentchannels_StoredServerPaymentChannels_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState;->internal_static_paymentchannels_StoredServerPaymentChannels_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState;->internal_static_paymentchannels_StoredServerPaymentChannel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lorg/bitcoinj/protocols/channels/ServerState;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState;->internal_static_paymentchannels_StoredServerPaymentChannel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1750
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method

.class public final Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ClientState.java"

# interfaces
.implements Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/ClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StoredClientPaymentChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    }
.end annotation


# static fields
.field public static final CLOSETRANSACTIONHASH_FIELD_NUMBER:I = 0x7

.field public static final CONTRACTTRANSACTION_FIELD_NUMBER:I = 0x2

.field public static final EXPIRYTIME_FIELD_NUMBER:I = 0xa

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MAJORVERSION_FIELD_NUMBER:I = 0x9

.field public static final MYKEY_FIELD_NUMBER:I = 0x4

.field public static final MYPUBLICKEY_FIELD_NUMBER:I = 0x8

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFUNDFEES_FIELD_NUMBER:I = 0x6

.field public static final REFUNDTRANSACTION_FIELD_NUMBER:I = 0x3

.field public static final SERVERKEY_FIELD_NUMBER:I = 0xb

.field public static final VALUETOME_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private closeTransactionHash_:Lcom/google/protobuf/ByteString;

.field private contractTransaction_:Lcom/google/protobuf/ByteString;

.field private expiryTime_:J

.field private id_:Lcom/google/protobuf/ByteString;

.field private majorVersion_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private myKey_:Lcom/google/protobuf/ByteString;

.field private myPublicKey_:Lcom/google/protobuf/ByteString;

.field private refundFees_:J

.field private refundTransaction_:Lcom/google/protobuf/ByteString;

.field private serverKey_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private valueToMe_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 990
    new-instance v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$1;

    invoke-direct {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    .line 2140
    new-instance v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->defaultInstance:Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    .line 2141
    invoke-direct {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 891
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 1228
    iput-byte v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    .line 1305
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedSerializedSize:I

    .line 892
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->initFields()V

    .line 895
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 899
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 905
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 962
    :sswitch_0
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 963
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->serverKey_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 957
    :sswitch_1
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 958
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->expiryTime_:J

    goto :goto_0

    .line 952
    :sswitch_2
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 953
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->majorVersion_:I

    goto :goto_0

    .line 947
    :sswitch_3
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 948
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->myPublicKey_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 942
    :sswitch_4
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 943
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 937
    :sswitch_5
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 938
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->refundFees_:J

    goto :goto_0

    .line 932
    :sswitch_6
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 933
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->valueToMe_:J

    goto :goto_0

    .line 927
    :sswitch_7
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 928
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 922
    :sswitch_8
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 923
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->refundTransaction_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 917
    :sswitch_9
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 918
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 912
    :sswitch_a
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 913
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->id_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_b
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 971
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 972
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 969
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 974
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 975
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->makeExtensionsImmutable()V

    throw p1

    .line 974
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 975
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x12 -> :sswitch_9
        0x1a -> :sswitch_8
        0x22 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x48 -> :sswitch_2
        0x50 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/protocols/channels/ClientState$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 862
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 868
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 1228
    iput-byte v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    .line 1305
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedSerializedSize:I

    .line 869
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/protocols/channels/ClientState$1;)V
    .locals 0

    .line 862
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 871
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 1228
    iput-byte p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    .line 1305
    iput p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedSerializedSize:I

    .line 871
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 862
    sget-boolean v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1602(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 862
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->id_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1702(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 862
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1802(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 862
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->refundTransaction_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1902(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 862
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->myPublicKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2002(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 862
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2102(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;J)J
    .locals 0

    .line 862
    iput-wide p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->valueToMe_:J

    return-wide p1
.end method

.method static synthetic access$2202(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;J)J
    .locals 0

    .line 862
    iput-wide p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->refundFees_:J

    return-wide p1
.end method

.method static synthetic access$2302(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 862
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2402(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;I)I
    .locals 0

    .line 862
    iput p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->majorVersion_:I

    return p1
.end method

.method static synthetic access$2502(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;J)J
    .locals 0

    .line 862
    iput-wide p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->expiryTime_:J

    return-wide p1
.end method

.method static synthetic access$2602(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 862
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->serverKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2702(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;I)I
    .locals 0

    .line 862
    iput p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1

    .line 875
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->defaultInstance:Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 980
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .line 1216
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->id_:Lcom/google/protobuf/ByteString;

    .line 1217
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1218
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1219
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->myPublicKey_:Lcom/google/protobuf/ByteString;

    .line 1220
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    const-wide/16 v0, 0x0

    .line 1221
    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->valueToMe_:J

    .line 1222
    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->refundFees_:J

    .line 1223
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    const/4 v2, 0x1

    .line 1224
    iput v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->majorVersion_:I

    .line 1225
    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->expiryTime_:J

    .line 1226
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->serverKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1420
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->access$1200()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1423
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1400
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1406
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1370
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1376
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1411
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1417
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1390
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1396
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1380
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1386
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object p0
.end method


# virtual methods
.method public getCloseTransactionHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1151
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContractTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1033
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 862
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 862
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1

    .line 879
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->defaultInstance:Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public getExpiryTime()J
    .locals 2

    .line 1189
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->expiryTime_:J

    return-wide v0
.end method

.method public getId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1018
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->id_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 1166
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->majorVersion_:I

    return v0
.end method

.method public getMyKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1086
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMyPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1063
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->myPublicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;",
            ">;"
        }
    .end annotation

    .line 1002
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRefundFees()J
    .locals 2

    .line 1124
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->refundFees_:J

    return-wide v0
.end method

.method public getRefundTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1048
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->refundTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1307
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1311
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1312
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->id_:Lcom/google/protobuf/ByteString;

    .line 1313
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1315
    :cond_1
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1316
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1317
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1319
    :cond_2
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 1320
    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1321
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1323
    :cond_3
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 1324
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1325
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1327
    :cond_4
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 1328
    iget-wide v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->valueToMe_:J

    .line 1329
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1331
    :cond_5
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 1332
    iget-wide v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->refundFees_:J

    .line 1333
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1335
    :cond_6
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 1336
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 1337
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1339
    :cond_7
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 1340
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->myPublicKey_:Lcom/google/protobuf/ByteString;

    .line 1341
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1343
    :cond_8
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 1344
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->majorVersion_:I

    .line 1345
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1347
    :cond_9
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 1348
    iget-wide v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->expiryTime_:J

    .line 1349
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1351
    :cond_a
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 1352
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->serverKey_:Lcom/google/protobuf/ByteString;

    .line 1353
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1355
    :cond_b
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1356
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedSerializedSize:I

    return v0
.end method

.method public getServerKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1212
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->serverKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 886
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValueToMe()J
    .locals 2

    .line 1101
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->valueToMe_:J

    return-wide v0
.end method

.method public hasCloseTransactionHash()Z
    .locals 2

    .line 1139
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasContractTransaction()Z
    .locals 2

    .line 1027
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasExpiryTime()Z
    .locals 2

    .line 1179
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .line 1012
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMajorVersion()Z
    .locals 2

    .line 1160
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasMyKey()Z
    .locals 2

    .line 1076
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasMyPublicKey()Z
    .locals 2

    .line 1057
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasRefundFees()Z
    .locals 2

    .line 1114
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasRefundTransaction()Z
    .locals 2

    .line 1042
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasServerKey()Z
    .locals 2

    .line 1202
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasValueToMe()Z
    .locals 2

    .line 1095
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 985
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState;->access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    const-class v2, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 986
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1230
    iget-byte v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1234
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasId()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1235
    iput-byte v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    return v2

    .line 1238
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasContractTransaction()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1239
    iput-byte v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    return v2

    .line 1242
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasRefundTransaction()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1243
    iput-byte v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    return v2

    .line 1246
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasMyPublicKey()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1247
    iput-byte v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    return v2

    .line 1250
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasMyKey()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1251
    iput-byte v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    return v2

    .line 1254
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasValueToMe()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1255
    iput-byte v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    return v2

    .line 1258
    :cond_7
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasRefundFees()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1259
    iput-byte v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    return v2

    .line 1262
    :cond_8
    iput-byte v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 862
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilderForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 862
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 862
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilderForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1421
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 2

    .line 1430
    new-instance v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/protocols/channels/ClientState$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 862
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->toBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 862
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->toBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .line 1425
    invoke-static {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilder(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1364
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1268
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getSerializedSize()I

    .line 1269
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1270
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->id_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1272
    :cond_0
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1273
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1275
    :cond_1
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 1276
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->refundTransaction_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1278
    :cond_2
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 1279
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1281
    :cond_3
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 1282
    iget-wide v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->valueToMe_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1284
    :cond_4
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 1285
    iget-wide v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->refundFees_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1287
    :cond_5
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 1288
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1290
    :cond_6
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 1291
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->myPublicKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1293
    :cond_7
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 1294
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->majorVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1296
    :cond_8
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    .line 1297
    iget-wide v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->expiryTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1299
    :cond_9
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    .line 1300
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->serverKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1302
    :cond_a
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.class public final Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ServerState.java"

# interfaces
.implements Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/ServerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StoredServerPaymentChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    }
.end annotation


# static fields
.field public static final BESTVALUESIGNATURE_FIELD_NUMBER:I = 0x2

.field public static final BESTVALUETOME_FIELD_NUMBER:I = 0x1

.field public static final CLIENTKEY_FIELD_NUMBER:I = 0x8

.field public static final CLIENTOUTPUT_FIELD_NUMBER:I = 0x5

.field public static final CONTRACTTRANSACTION_FIELD_NUMBER:I = 0x4

.field public static final MAJORVERSION_FIELD_NUMBER:I = 0x7

.field public static final MYKEY_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFUNDTRANSACTIONUNLOCKTIMESECS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

.field private static final serialVersionUID:J


# instance fields
.field private bestValueSignature_:Lcom/google/protobuf/ByteString;

.field private bestValueToMe_:J

.field private bitField0_:I

.field private clientKey_:Lcom/google/protobuf/ByteString;

.field private clientOutput_:Lcom/google/protobuf/ByteString;

.field private contractTransaction_:Lcom/google/protobuf/ByteString;

.field private majorVersion_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private myKey_:Lcom/google/protobuf/ByteString;

.field private refundTransactionUnlockTimeSecs_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 911
    new-instance v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$1;

    invoke-direct {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    .line 1730
    new-instance v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->defaultInstance:Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    .line 1731
    invoke-direct {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 827
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 1065
    iput-byte v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    .line 1121
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedSerializedSize:I

    .line 828
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->initFields()V

    .line 831
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 835
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0x8

    if-eq v2, v4, :cond_8

    const/16 v5, 0x12

    if-eq v2, v5, :cond_7

    const/16 v5, 0x18

    if-eq v2, v5, :cond_6

    const/16 v5, 0x22

    if-eq v2, v5, :cond_5

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x32

    if-eq v2, v4, :cond_3

    const/16 v4, 0x38

    if-eq v2, v4, :cond_2

    const/16 v4, 0x42

    if-eq v2, v4, :cond_1

    .line 841
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 883
    :cond_1
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 884
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->clientKey_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 878
    :cond_2
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 879
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->majorVersion_:I

    goto :goto_0

    .line 873
    :cond_3
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 874
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 868
    :cond_4
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 869
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->clientOutput_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 863
    :cond_5
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 864
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 858
    :cond_6
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 859
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->refundTransactionUnlockTimeSecs_:J

    goto :goto_0

    .line 853
    :cond_7
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 854
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    .line 848
    :cond_8
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 849
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueToMe_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 892
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 893
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 890
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 895
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 896
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->makeExtensionsImmutable()V

    throw p1

    .line 895
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 896
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/protocols/channels/ServerState$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 798
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 804
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 1065
    iput-byte v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    .line 1121
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedSerializedSize:I

    .line 805
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/protocols/channels/ServerState$1;)V
    .locals 0

    .line 798
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 807
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 1065
    iput-byte p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    .line 1121
    iput p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedSerializedSize:I

    .line 807
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 798
    sget-boolean v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1602(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;J)J
    .locals 0

    .line 798
    iput-wide p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueToMe_:J

    return-wide p1
.end method

.method static synthetic access$1702(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 798
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1802(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;J)J
    .locals 0

    .line 798
    iput-wide p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->refundTransactionUnlockTimeSecs_:J

    return-wide p1
.end method

.method static synthetic access$1902(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 798
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2002(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 798
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->clientOutput_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2102(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 798
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2202(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;I)I
    .locals 0

    .line 798
    iput p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->majorVersion_:I

    return p1
.end method

.method static synthetic access$2302(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 798
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->clientKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2402(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;I)I
    .locals 0

    .line 798
    iput p1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1

    .line 811
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->defaultInstance:Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 901
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1056
    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueToMe_:J

    .line 1057
    sget-object v2, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 1058
    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->refundTransactionUnlockTimeSecs_:J

    .line 1059
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1060
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 1061
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x1

    .line 1062
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->majorVersion_:I

    .line 1063
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->clientKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1224
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->access$1200()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1227
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilder()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1204
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1210
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1174
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1180
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1215
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1221
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1194
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1200
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1184
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1190
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object p0
.end method


# virtual methods
.method public getBestValueSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 954
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBestValueToMe()J
    .locals 2

    .line 939
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueToMe_:J

    return-wide v0
.end method

.method public getClientKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1052
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->clientKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getClientOutput()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 999
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->clientOutput_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContractTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 984
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 798
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 798
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1

    .line 815
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->defaultInstance:Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 1029
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->majorVersion_:I

    return v0
.end method

.method public getMyKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1014
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;",
            ">;"
        }
    .end annotation

    .line 923
    sget-object v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRefundTransactionUnlockTimeSecs()J
    .locals 2

    .line 969
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->refundTransactionUnlockTimeSecs_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1123
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1127
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1128
    iget-wide v3, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueToMe_:J

    .line 1129
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1131
    :cond_1
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1132
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 1133
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1135
    :cond_2
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 1136
    iget-wide v3, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->refundTransactionUnlockTimeSecs_:J

    .line 1137
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1139
    :cond_3
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 1140
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1141
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1143
    :cond_4
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 1144
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 1145
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1147
    :cond_5
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 1148
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1149
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1151
    :cond_6
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 1152
    iget v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->majorVersion_:I

    .line 1153
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1155
    :cond_7
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 1156
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->clientKey_:Lcom/google/protobuf/ByteString;

    .line 1157
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1159
    :cond_8
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1160
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 822
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBestValueSignature()Z
    .locals 2

    .line 948
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

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

.method public hasBestValueToMe()Z
    .locals 2

    .line 933
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasClientKey()Z
    .locals 2

    .line 1042
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

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

.method public hasClientOutput()Z
    .locals 2

    .line 993
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

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

.method public hasContractTransaction()Z
    .locals 2

    .line 978
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

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

.method public hasMajorVersion()Z
    .locals 2

    .line 1023
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

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

.method public hasMyKey()Z
    .locals 2

    .line 1008
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

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

.method public hasRefundTransactionUnlockTimeSecs()Z
    .locals 2

    .line 963
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 906
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState;->access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    const-class v2, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 907
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1067
    iget-byte v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1071
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasBestValueToMe()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1072
    iput-byte v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    return v2

    .line 1075
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasRefundTransactionUnlockTimeSecs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1076
    iput-byte v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    return v2

    .line 1079
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasContractTransaction()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1080
    iput-byte v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    return v2

    .line 1083
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasMyKey()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1084
    iput-byte v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    return v2

    .line 1087
    :cond_5
    iput-byte v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 798
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilderForType()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 798
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 798
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilderForType()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1225
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilder()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2

    .line 1234
    new-instance v0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/protocols/channels/ServerState$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 798
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->toBuilder()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 798
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->toBuilder()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .line 1229
    invoke-static {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilder(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

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

    .line 1168
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1093
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getSerializedSize()I

    .line 1094
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1095
    iget-wide v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueToMe_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1097
    :cond_0
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1098
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1100
    :cond_1
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 1101
    iget-wide v2, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->refundTransactionUnlockTimeSecs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1103
    :cond_2
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 1104
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1106
    :cond_3
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 1107
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->clientOutput_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1109
    :cond_4
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 1110
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1112
    :cond_5
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 1113
    iget v1, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->majorVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1115
    :cond_6
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 1116
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->clientKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1118
    :cond_7
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.class public final Lorg/bitcoinj/wallet/Protos$TransactionOutput;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCRIPT_BYTES_FIELD_NUMBER:I = 0x2

.field public static final SPENT_BY_TRANSACTION_HASH_FIELD_NUMBER:I = 0x3

.field public static final SPENT_BY_TRANSACTION_INDEX_FIELD_NUMBER:I = 0x4

.field public static final VALUE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionOutput;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private scriptBytes_:Lcom/google/protobuf/ByteString;

.field private spentByTransactionHash_:Lcom/google/protobuf/ByteString;

.field private spentByTransactionIndex_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5882
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 6464
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    .line 6465
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5818
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 5988
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    .line 6024
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedSerializedSize:I

    .line 5819
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->initFields()V

    .line 5822
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 5826
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    const/16 v5, 0x12

    if-eq v2, v5, :cond_3

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_2

    const/16 v5, 0x20

    if-eq v2, v5, :cond_1

    .line 5832
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 5854
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    .line 5855
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionIndex_:I

    goto :goto_0

    .line 5849
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    .line 5850
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 5844
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    .line 5845
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 5839
    :cond_4
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    .line 5840
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->value_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5863
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 5864
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5861
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5866
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5867
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->makeExtensionsImmutable()V

    throw p1

    .line 5866
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5867
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5789
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5795
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 5988
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    .line 6024
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedSerializedSize:I

    .line 5796
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 5789
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 5798
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 5988
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    .line 6024
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedSerializedSize:I

    .line 5798
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$8000()Z
    .locals 1

    .line 5789
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8202(Lorg/bitcoinj/wallet/Protos$TransactionOutput;J)J
    .locals 0

    .line 5789
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->value_:J

    return-wide p1
.end method

.method static synthetic access$8302(Lorg/bitcoinj/wallet/Protos$TransactionOutput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 5789
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$8402(Lorg/bitcoinj/wallet/Protos$TransactionOutput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 5789
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$8502(Lorg/bitcoinj/wallet/Protos$TransactionOutput;I)I
    .locals 0

    .line 5789
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionIndex_:I

    return p1
.end method

.method static synthetic access$8602(Lorg/bitcoinj/wallet/Protos$TransactionOutput;I)I
    .locals 0

    .line 5789
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1

    .line 5802
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5872
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$7500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5983
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->value_:J

    .line 5984
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 5985
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x0

    .line 5986
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionIndex_:I

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 6111
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->access$7800()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 6114
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6091
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6097
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6061
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6067
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6102
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6108
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6081
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6087
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6071
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6077
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5789
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5789
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput;
    .locals 1

    .line 5806
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 5894
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getScriptBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5933
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 6026
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 6030
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6031
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->value_:J

    .line 6032
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6034
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 6035
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 6036
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6038
    :cond_2
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 6039
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 6040
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6042
    :cond_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 6043
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionIndex_:I

    .line 6044
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6046
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6047
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedSerializedSize:I

    return v0
.end method

.method public getSpentByTransactionHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5956
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSpentByTransactionIndex()I
    .locals 1

    .line 5979
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionIndex_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 5813
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 5910
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->value_:J

    return-wide v0
.end method

.method public hasScriptBytes()Z
    .locals 2

    .line 5923
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

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

.method public hasSpentByTransactionHash()Z
    .locals 2

    .line 5946
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

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

.method public hasSpentByTransactionIndex()Z
    .locals 2

    .line 5969
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .line 5904
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 5877
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$7600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionOutput;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    .line 5878
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 5990
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 5994
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5995
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    return v2

    .line 5998
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->hasScriptBytes()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5999
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    return v2

    .line 6002
    :cond_3
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5789
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5789
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5789
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 6112
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 2

    .line 6121
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5789
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5789
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;
    .locals 1

    .line 6116
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionOutput;)Lorg/bitcoinj/wallet/Protos$TransactionOutput$Builder;

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

    .line 6055
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

    .line 6008
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getSerializedSize()I

    .line 6009
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 6010
    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->value_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6012
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 6013
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6015
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6016
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionHash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6018
    :cond_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 6019
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->spentByTransactionIndex_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6021
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionOutput;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

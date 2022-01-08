.class public final Lorg/bitcoinj/wallet/Protos$TransactionInput;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCRIPT_BYTES_FIELD_NUMBER:I = 0x3

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x4

.field public static final TRANSACTION_OUT_POINT_HASH_FIELD_NUMBER:I = 0x1

.field public static final TRANSACTION_OUT_POINT_INDEX_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionInput;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private scriptBytes_:Lcom/google/protobuf/ByteString;

.field private sequence_:I

.field private transactionOutPointHash_:Lcom/google/protobuf/ByteString;

.field private transactionOutPointIndex_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5013
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionInput$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 5715
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionInput;

    .line 5716
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4944
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 5151
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    .line 5194
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedSerializedSize:I

    .line 4945
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->initFields()V

    .line 4948
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 4952
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v4, 0x10

    if-eq v2, v4, :cond_4

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_3

    const/16 v5, 0x20

    if-eq v2, v5, :cond_2

    const/16 v5, 0x28

    if-eq v2, v5, :cond_1

    .line 4958
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4985
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    .line 4986
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->value_:J

    goto :goto_0

    .line 4980
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    .line 4981
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->sequence_:I

    goto :goto_0

    .line 4975
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    .line 4976
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 4970
    :cond_4
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    .line 4971
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointIndex_:I

    goto :goto_0

    .line 4965
    :cond_5
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    .line 4966
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4994
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 4995
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 4992
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4997
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4998
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->makeExtensionsImmutable()V

    throw p1

    .line 4997
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4998
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4915
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionInput;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 4921
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 5151
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    .line 5194
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedSerializedSize:I

    .line 4922
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 4915
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 4924
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 5151
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    .line 5194
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedSerializedSize:I

    .line 4924
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$6700()Z
    .locals 1

    .line 4915
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6902(Lorg/bitcoinj/wallet/Protos$TransactionInput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 4915
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$7002(Lorg/bitcoinj/wallet/Protos$TransactionInput;I)I
    .locals 0

    .line 4915
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointIndex_:I

    return p1
.end method

.method static synthetic access$7102(Lorg/bitcoinj/wallet/Protos$TransactionInput;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 4915
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$7202(Lorg/bitcoinj/wallet/Protos$TransactionInput;I)I
    .locals 0

    .line 4915
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->sequence_:I

    return p1
.end method

.method static synthetic access$7302(Lorg/bitcoinj/wallet/Protos$TransactionInput;J)J
    .locals 0

    .line 4915
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->value_:J

    return-wide p1
.end method

.method static synthetic access$7402(Lorg/bitcoinj/wallet/Protos$TransactionInput;I)I
    .locals 0

    .line 4915
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1

    .line 4928
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5003
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$6200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 5145
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x0

    .line 5146
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointIndex_:I

    .line 5147
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 5148
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->sequence_:I

    const-wide/16 v0, 0x0

    .line 5149
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->value_:J

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5285
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->access$6500()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5288
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5265
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5271
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5235
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5241
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5276
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5282
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5255
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5261
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5245
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5251
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 4915
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4915
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionInput;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionInput;
    .locals 1

    .line 4932
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionInput;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$TransactionInput;",
            ">;"
        }
    .end annotation

    .line 5025
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getScriptBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5095
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 5118
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->sequence_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 5196
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5200
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 5201
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    .line 5202
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5204
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5205
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointIndex_:I

    .line 5206
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5208
    :cond_2
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 5209
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    .line 5210
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5212
    :cond_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 5213
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->sequence_:I

    .line 5214
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5216
    :cond_4
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 5217
    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->value_:J

    .line 5218
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5220
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5221
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedSerializedSize:I

    return v0
.end method

.method public getTransactionOutPointHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5049
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTransactionOutPointIndex()I
    .locals 1

    .line 5072
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointIndex_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 4939
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 5141
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->value_:J

    return-wide v0
.end method

.method public hasScriptBytes()Z
    .locals 2

    .line 5085
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

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

.method public hasSequence()Z
    .locals 2

    .line 5108
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

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

.method public hasTransactionOutPointHash()Z
    .locals 2

    .line 5039
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTransactionOutPointIndex()Z
    .locals 2

    .line 5062
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

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

.method public hasValue()Z
    .locals 2

    .line 5131
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 5008
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$6300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionInput;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    .line 5009
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 5153
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 5157
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasTransactionOutPointHash()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5158
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    return v2

    .line 5161
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasTransactionOutPointIndex()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5162
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    return v2

    .line 5165
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->hasScriptBytes()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5166
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    return v2

    .line 5169
    :cond_4
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4915
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4915
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4915
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5286
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 2

    .line 5295
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4915
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4915
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;
    .locals 1

    .line 5290
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionInput;)Lorg/bitcoinj/wallet/Protos$TransactionInput$Builder;

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

    .line 5229
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

    .line 5175
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getSerializedSize()I

    .line 5176
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 5177
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointHash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5179
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5180
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->transactionOutPointIndex_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 5182
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 5183
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->scriptBytes_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5185
    :cond_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 5186
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->sequence_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 5188
    :cond_3
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 5189
    iget-wide v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionInput;->value_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 5191
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionInput;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

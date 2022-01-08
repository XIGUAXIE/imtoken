.class public final Lorg/bitcoinj/wallet/Protos$TransactionSigner;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionSigner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    }
.end annotation


# static fields
.field public static final CLASS_NAME_FIELD_NUMBER:I = 0x1

.field public static final DATA_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$TransactionSigner;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionSigner;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private className_:Ljava/lang/Object;

.field private data_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13586
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    .line 14095
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    .line 14096
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13531
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 13683
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->memoizedIsInitialized:B

    .line 13709
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->memoizedSerializedSize:I

    .line 13532
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->initFields()V

    .line 13535
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 13539
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 13545
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 13558
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->bitField0_:I

    .line 13559
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->data_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 13552
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 13553
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->bitField0_:I

    .line 13554
    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->className_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13567
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 13568
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 13565
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13570
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 13571
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->makeExtensionsImmutable()V

    throw p1

    .line 13570
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 13571
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13502
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 13508
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 13683
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->memoizedIsInitialized:B

    .line 13709
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->memoizedSerializedSize:I

    .line 13509
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 13502
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 13511
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 13683
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->memoizedIsInitialized:B

    .line 13709
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->memoizedSerializedSize:I

    .line 13511
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$16400()Z
    .locals 1

    .line 13502
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$16600(Lorg/bitcoinj/wallet/Protos$TransactionSigner;)Ljava/lang/Object;
    .locals 0

    .line 13502
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->className_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$16602(Lorg/bitcoinj/wallet/Protos$TransactionSigner;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13502
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->className_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16702(Lorg/bitcoinj/wallet/Protos$TransactionSigner;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 13502
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$16802(Lorg/bitcoinj/wallet/Protos$TransactionSigner;I)I
    .locals 0

    .line 13502
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1

    .line 13515
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 13576
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$15900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const-string v0, ""

    .line 13680
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->className_:Ljava/lang/Object;

    .line 13681
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    .line 13788
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->access$16200()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionSigner;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    .line 13791
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionSigner;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13768
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13774
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13738
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13744
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13779
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13785
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13758
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13764
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13748
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13754
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object p0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 13622
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->className_:Ljava/lang/Object;

    .line 13623
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13624
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 13626
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13628
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13629
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13630
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->className_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getClassNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 13644
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->className_:Ljava/lang/Object;

    .line 13645
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13646
    check-cast v0, Ljava/lang/String;

    .line 13647
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13649
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->className_:Ljava/lang/Object;

    return-object v0

    .line 13652
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13676
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 13502
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13502
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1

    .line 13519
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->defaultInstance:Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$TransactionSigner;",
            ">;"
        }
    .end annotation

    .line 13598
    sget-object v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 13711
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 13715
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 13717
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getClassNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13719
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 13720
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->data_:Lcom/google/protobuf/ByteString;

    .line 13721
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13723
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 13724
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 13526
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasClassName()Z
    .locals 2

    .line 13612
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasData()Z
    .locals 2

    .line 13666
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 13581
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$16000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    .line 13582
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 13685
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 13689
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->hasClassName()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13690
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->memoizedIsInitialized:B

    return v2

    .line 13693
    :cond_2
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13502
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 13502
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13502
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    .line 13789
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->newBuilder()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 2

    .line 13798
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13502
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13502
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    .line 13793
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->newBuilder(Lorg/bitcoinj/wallet/Protos$TransactionSigner;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

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

    .line 13732
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13699
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getSerializedSize()I

    .line 13700
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 13701
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getClassNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13703
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 13704
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13706
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.class public final Lorg/bitcoinj/wallet/Protos$Script;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Script"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$Script$Builder;
    }
.end annotation


# static fields
.field public static final CREATION_TIMESTAMP_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROGRAM_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$Script;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private creationTimestamp_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private program_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4407
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Script$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Script$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    .line 4816
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Script;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$Script;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Script;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Script;

    .line 4817
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Script;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4353
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 4467
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    .line 4497
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedSerializedSize:I

    .line 4354
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Script;->initFields()V

    .line 4357
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 4361
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x10

    if-eq v2, v4, :cond_1

    .line 4367
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/wallet/Protos$Script;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4379
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    .line 4380
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->creationTimestamp_:J

    goto :goto_0

    .line 4374
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    .line 4375
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->program_:Lcom/google/protobuf/ByteString;
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

    .line 4388
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 4389
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 4386
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4391
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Script;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4392
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->makeExtensionsImmutable()V

    throw p1

    .line 4391
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Script;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4392
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4324
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Script;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 4330
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 4467
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    .line 4497
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedSerializedSize:I

    .line 4331
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Script;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 4324
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 4333
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 4467
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    .line 4497
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedSerializedSize:I

    .line 4333
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Script;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$5700()Z
    .locals 1

    .line 4324
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Script;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5902(Lorg/bitcoinj/wallet/Protos$Script;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 4324
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Script;->program_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6002(Lorg/bitcoinj/wallet/Protos$Script;J)J
    .locals 0

    .line 4324
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Script;->creationTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$6102(Lorg/bitcoinj/wallet/Protos$Script;I)I
    .locals 0

    .line 4324
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1

    .line 4337
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4397
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$5200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 4464
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->program_:Lcom/google/protobuf/ByteString;

    const-wide/16 v0, 0x0

    .line 4465
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->creationTimestamp_:J

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .line 4576
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->access$5500()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .line 4579
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4556
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4562
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4526
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4532
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4567
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4573
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4546
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4552
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4536
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4542
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object p0
.end method


# virtual methods
.method public getCreationTimestamp()J
    .locals 2

    .line 4460
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->creationTimestamp_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 4324
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4324
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1

    .line 4341
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;"
        }
    .end annotation

    .line 4419
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProgram()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4435
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->program_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 4499
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4503
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 4504
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Script;->program_:Lcom/google/protobuf/ByteString;

    .line 4505
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4507
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 4508
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$Script;->creationTimestamp_:J

    .line 4509
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4511
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4512
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 4348
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCreationTimestamp()Z
    .locals 2

    .line 4449
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

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

.method public hasProgram()Z
    .locals 2

    .line 4429
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

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

    .line 4402
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$5300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Script;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    .line 4403
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 4469
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 4473
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->hasProgram()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4474
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    return v2

    .line 4477
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->hasCreationTimestamp()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4478
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    return v2

    .line 4481
    :cond_3
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$Script;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4324
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4324
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4324
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .line 4577
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2

    .line 4586
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4324
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->toBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4324
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->toBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .line 4581
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Script;->newBuilder(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

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

    .line 4520
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

    .line 4487
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->getSerializedSize()I

    .line 4488
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 4489
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->program_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4491
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4492
    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Script;->creationTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 4494
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.class public final Lorg/bitcoin/paymentchannel/Protos$Error;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$Error$Builder;,
        Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field public static final EXPECTED_VALUE_FIELD_NUMBER:I = 0x3

.field public static final EXPLANATION_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$Error;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Error;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field private expectedValue_:J

.field private explanation_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8766
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Error$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    .line 9526
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 9527
    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Error;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8700
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 9073
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedIsInitialized:B

    .line 9098
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedSerializedSize:I

    .line 8701
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->initFields()V

    .line 8704
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 8708
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x18

    if-eq v2, v4, :cond_1

    .line 8714
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/paymentchannel/Protos$Error;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 8738
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    .line 8739
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->expectedValue_:J

    goto :goto_0

    .line 8732
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 8733
    iget v3, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    .line 8734
    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    goto :goto_0

    .line 8721
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 8722
    invoke-static {v2}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->valueOf(I)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object v4

    if-nez v4, :cond_4

    .line 8724
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 8726
    :cond_4
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    .line 8727
    iput-object v4, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
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

    .line 8747
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 8748
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 8745
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8750
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 8751
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->makeExtensionsImmutable()V

    throw p1

    .line 8750
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 8751
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8671
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Error;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 8677
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 9073
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedIsInitialized:B

    .line 9098
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedSerializedSize:I

    .line 8678
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 8671
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 8680
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 9073
    iput-byte p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedIsInitialized:B

    .line 9098
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedSerializedSize:I

    .line 8680
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$11700()Z
    .locals 1

    .line 8671
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$Error;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11902(Lorg/bitcoin/paymentchannel/Protos$Error;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 0

    .line 8671
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object p1
.end method

.method static synthetic access$12000(Lorg/bitcoin/paymentchannel/Protos$Error;)Ljava/lang/Object;
    .locals 0

    .line 8671
    iget-object p0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12002(Lorg/bitcoin/paymentchannel/Protos$Error;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8671
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12102(Lorg/bitcoin/paymentchannel/Protos$Error;J)J
    .locals 0

    .line 8671
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->expectedValue_:J

    return-wide p1
.end method

.method static synthetic access$12202(Lorg/bitcoin/paymentchannel/Protos$Error;I)I
    .locals 0

    .line 8671
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1

    .line 8684
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8756
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$11200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 9069
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const-string v0, ""

    .line 9070
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 9071
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->expectedValue_:J

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .line 9181
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->access$11500()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .line 9184
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9161
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9167
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9131
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9137
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9172
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9178
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9151
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9157
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9141
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9147
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object p0
.end method


# virtual methods
.method public getCode()Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 1

    .line 8988
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 8671
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8671
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1

    .line 8688
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public getExpectedValue()J
    .locals 2

    .line 9065
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->expectedValue_:J

    return-wide v0
.end method

.method public getExplanation()Ljava/lang/String;
    .locals 2

    .line 9011
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    .line 9012
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9013
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 9015
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9017
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9018
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9019
    iput-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getExplanationBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 9033
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    .line 9034
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9035
    check-cast v0, Ljava/lang/String;

    .line 9036
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9038
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->explanation_:Ljava/lang/Object;

    return-object v0

    .line 9041
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$Error;",
            ">;"
        }
    .end annotation

    .line 8778
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 9100
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 9104
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 9105
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 9106
    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9108
    :cond_1
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 9110
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getExplanationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9112
    :cond_2
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 9113
    iget-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->expectedValue_:J

    .line 9114
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9116
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 9117
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 8695
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCode()Z
    .locals 2

    .line 8982
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasExpectedValue()Z
    .locals 2

    .line 9055
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

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

.method public hasExplanation()Z
    .locals 2

    .line 9001
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

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

    .line 8761
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$11300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$Error;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 8762
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 9075
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 9079
    :cond_1
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8671
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8671
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8671
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .line 9182
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 2

    .line 9191
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8671
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8671
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .line 9186
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

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

    .line 9125
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

    .line 9085
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getSerializedSize()I

    .line 9086
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 9087
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9089
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 9090
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getExplanationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9092
    :cond_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 9093
    iget-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error;->expectedValue_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 9095
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

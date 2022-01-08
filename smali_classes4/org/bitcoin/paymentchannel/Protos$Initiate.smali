.class public final Lorg/bitcoin/paymentchannel/Protos$Initiate;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Initiate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    }
.end annotation


# static fields
.field public static final EXPIRE_TIME_SECS_FIELD_NUMBER:I = 0x3

.field public static final MIN_ACCEPTED_CHANNEL_SIZE_FIELD_NUMBER:I = 0x2

.field public static final MIN_PAYMENT_FIELD_NUMBER:I = 0x4

.field public static final MULTISIG_KEY_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$Initiate;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Initiate;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private expireTimeSecs_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private minAcceptedChannelSize_:J

.field private minPayment_:J

.field private multisigKey_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4217
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Initiate$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    .line 4936
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 4937
    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4153
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 4363
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    .line 4407
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedSerializedSize:I

    .line 4154
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->initFields()V

    .line 4157
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 4161
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/16 v4, 0x18

    if-eq v2, v4, :cond_2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_1

    .line 4167
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4189
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    .line 4190
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minPayment_:J

    goto :goto_0

    .line 4184
    :cond_2
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    .line 4185
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->expireTimeSecs_:J

    goto :goto_0

    .line 4179
    :cond_3
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    .line 4180
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minAcceptedChannelSize_:J

    goto :goto_0

    .line 4174
    :cond_4
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    .line 4175
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->multisigKey_:Lcom/google/protobuf/ByteString;
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

    .line 4198
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 4199
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 4196
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4201
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4202
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->makeExtensionsImmutable()V

    throw p1

    .line 4201
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4202
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4124
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Initiate;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 4130
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 4363
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    .line 4407
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedSerializedSize:I

    .line 4131
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 4124
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 4133
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 4363
    iput-byte p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    .line 4407
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedSerializedSize:I

    .line 4133
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$4600()Z
    .locals 1

    .line 4124
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4802(Lorg/bitcoin/paymentchannel/Protos$Initiate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 4124
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->multisigKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$4902(Lorg/bitcoin/paymentchannel/Protos$Initiate;J)J
    .locals 0

    .line 4124
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minAcceptedChannelSize_:J

    return-wide p1
.end method

.method static synthetic access$5002(Lorg/bitcoin/paymentchannel/Protos$Initiate;J)J
    .locals 0

    .line 4124
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->expireTimeSecs_:J

    return-wide p1
.end method

.method static synthetic access$5102(Lorg/bitcoin/paymentchannel/Protos$Initiate;J)J
    .locals 0

    .line 4124
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minPayment_:J

    return-wide p1
.end method

.method static synthetic access$5202(Lorg/bitcoin/paymentchannel/Protos$Initiate;I)I
    .locals 0

    .line 4124
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1

    .line 4137
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4207
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$4100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 4358
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->multisigKey_:Lcom/google/protobuf/ByteString;

    const-wide/16 v0, 0x0

    .line 4359
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minAcceptedChannelSize_:J

    .line 4360
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->expireTimeSecs_:J

    .line 4361
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minPayment_:J

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .line 4494
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->access$4400()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .line 4497
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4474
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4480
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4444
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4450
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4485
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4491
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4464
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4470
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4454
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4460
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 4124
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4124
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1

    .line 4141
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public getExpireTimeSecs()J
    .locals 2

    .line 4321
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->expireTimeSecs_:J

    return-wide v0
.end method

.method public getMinAcceptedChannelSize()J
    .locals 2

    .line 4286
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minAcceptedChannelSize_:J

    return-wide v0
.end method

.method public getMinPayment()J
    .locals 2

    .line 4354
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minPayment_:J

    return-wide v0
.end method

.method public getMultisigKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4257
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->multisigKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$Initiate;",
            ">;"
        }
    .end annotation

    .line 4229
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 4409
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4413
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 4414
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 4415
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4417
    :cond_1
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 4418
    iget-wide v3, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minAcceptedChannelSize_:J

    .line 4419
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4421
    :cond_2
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 4422
    iget-wide v3, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->expireTimeSecs_:J

    .line 4423
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4425
    :cond_3
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 4426
    iget-wide v3, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minPayment_:J

    .line 4427
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4429
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4430
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 4148
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExpireTimeSecs()Z
    .locals 2

    .line 4305
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

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

.method public hasMinAcceptedChannelSize()Z
    .locals 2

    .line 4273
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

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

.method public hasMinPayment()Z
    .locals 2

    .line 4339
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

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

.method public hasMultisigKey()Z
    .locals 2

    .line 4245
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

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

    .line 4212
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$4200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 4213
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 4365
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 4369
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasMultisigKey()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4370
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    return v2

    .line 4373
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasMinAcceptedChannelSize()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4374
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    return v2

    .line 4377
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasExpireTimeSecs()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4378
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    return v2

    .line 4381
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->hasMinPayment()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4382
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    return v2

    .line 4385
    :cond_5
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4124
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4124
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4124
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .line 4495
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 2

    .line 4504
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4124
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4124
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    .locals 1

    .line 4499
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

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

    .line 4438
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

    .line 4391
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getSerializedSize()I

    .line 4392
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 4393
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->multisigKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4395
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4396
    iget-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minAcceptedChannelSize_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4398
    :cond_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 4399
    iget-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->expireTimeSecs_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4401
    :cond_2
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 4402
    iget-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$Initiate;->minPayment_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 4404
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

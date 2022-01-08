.class public final Lorg/bitcoinj/wallet/Protos$ExchangeRate;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ExchangeRateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExchangeRate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    }
.end annotation


# static fields
.field public static final COIN_VALUE_FIELD_NUMBER:I = 0x1

.field public static final FIAT_CURRENCY_CODE_FIELD_NUMBER:I = 0x3

.field public static final FIAT_VALUE_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$ExchangeRate;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private coinValue_:J

.field private fiatCurrencyCode_:Ljava/lang/Object;

.field private fiatValue_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18298
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    .line 18907
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->defaultInstance:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    .line 18908
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18238
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 18419
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedIsInitialized:B

    .line 18456
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedSerializedSize:I

    .line 18239
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->initFields()V

    .line 18242
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 18246
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 18252
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 18269
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 18270
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    .line 18271
    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatCurrencyCode_:Ljava/lang/Object;

    goto :goto_0

    .line 18264
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    .line 18265
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatValue_:J

    goto :goto_0

    .line 18259
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    .line 18260
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->coinValue_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18279
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 18280
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 18277
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18282
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 18283
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->makeExtensionsImmutable()V

    throw p1

    .line 18282
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 18283
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18209
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 18215
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 18419
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedIsInitialized:B

    .line 18456
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedSerializedSize:I

    .line 18216
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 18209
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 18218
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 18419
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedIsInitialized:B

    .line 18456
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedSerializedSize:I

    .line 18218
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$20300()Z
    .locals 1

    .line 18209
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$20502(Lorg/bitcoinj/wallet/Protos$ExchangeRate;J)J
    .locals 0

    .line 18209
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->coinValue_:J

    return-wide p1
.end method

.method static synthetic access$20602(Lorg/bitcoinj/wallet/Protos$ExchangeRate;J)J
    .locals 0

    .line 18209
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatValue_:J

    return-wide p1
.end method

.method static synthetic access$20700(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Ljava/lang/Object;
    .locals 0

    .line 18209
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatCurrencyCode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20702(Lorg/bitcoinj/wallet/Protos$ExchangeRate;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18209
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatCurrencyCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20802(Lorg/bitcoinj/wallet/Protos$ExchangeRate;I)I
    .locals 0

    .line 18209
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1

    .line 18222
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->defaultInstance:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 18288
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$19800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 18415
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->coinValue_:J

    .line 18416
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatValue_:J

    const-string v0, ""

    .line 18417
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatCurrencyCode_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    .line 18539
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->access$20100()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    .line 18542
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->newBuilder()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18519
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18525
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18489
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18495
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18530
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18536
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18509
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18515
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18499
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18505
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object p0
.end method


# virtual methods
.method public getCoinValue()J
    .locals 2

    .line 18334
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->coinValue_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 18209
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 18209
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1

    .line 18226
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->defaultInstance:Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    return-object v0
.end method

.method public getFiatCurrencyCode()Ljava/lang/String;
    .locals 2

    .line 18380
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatCurrencyCode_:Ljava/lang/Object;

    .line 18381
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18382
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 18384
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18386
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18387
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18388
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatCurrencyCode_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getFiatCurrencyCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 18402
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatCurrencyCode_:Ljava/lang/Object;

    .line 18403
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18404
    check-cast v0, Ljava/lang/String;

    .line 18405
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18407
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatCurrencyCode_:Ljava/lang/Object;

    return-object v0

    .line 18410
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFiatValue()J
    .locals 2

    .line 18357
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatValue_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$ExchangeRate;",
            ">;"
        }
    .end annotation

    .line 18310
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 18458
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 18462
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 18463
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->coinValue_:J

    .line 18464
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18466
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 18467
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatValue_:J

    .line 18468
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18470
    :cond_2
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 18472
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getFiatCurrencyCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18474
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 18475
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 18233
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCoinValue()Z
    .locals 2

    .line 18324
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFiatCurrencyCode()Z
    .locals 2

    .line 18370
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

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

.method public hasFiatValue()Z
    .locals 2

    .line 18347
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

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

    .line 18293
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$19900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    const-class v2, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    .line 18294
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 18421
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 18425
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->hasCoinValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18426
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedIsInitialized:B

    return v2

    .line 18429
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->hasFiatValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18430
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedIsInitialized:B

    return v2

    .line 18433
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->hasFiatCurrencyCode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18434
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedIsInitialized:B

    return v2

    .line 18437
    :cond_4
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 18209
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 18209
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 18209
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    .line 18540
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->newBuilder()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 2

    .line 18549
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 18209
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->toBuilder()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 18209
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->toBuilder()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    .line 18544
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->newBuilder(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

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

    .line 18483
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

    .line 18443
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getSerializedSize()I

    .line 18444
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 18445
    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->coinValue_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 18447
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 18448
    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->fiatValue_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 18450
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 18451
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getFiatCurrencyCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18453
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

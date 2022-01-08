.class public final Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdatePayment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_CHANGE_VALUE_FIELD_NUMBER:I = 0x1

.field public static final INFO_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientChangeValue_:J

.field private info_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private signature_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7153
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    .line 7711
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 7712
    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7094
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 7251
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    .line 7284
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedSerializedSize:I

    .line 7095
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->initFields()V

    .line 7098
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 7102
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 7108
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 7125
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    .line 7126
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->info_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 7120
    :cond_2
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    .line 7121
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->signature_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 7115
    :cond_3
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    .line 7116
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->clientChangeValue_:J
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

    .line 7134
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 7135
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 7132
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7137
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7138
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->makeExtensionsImmutable()V

    throw p1

    .line 7137
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 7138
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7065
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 7071
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 7251
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    .line 7284
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedSerializedSize:I

    .line 7072
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 7065
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 7074
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 7251
    iput-byte p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    .line 7284
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedSerializedSize:I

    .line 7074
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$8800()Z
    .locals 1

    .line 7065
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9002(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;J)J
    .locals 0

    .line 7065
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->clientChangeValue_:J

    return-wide p1
.end method

.method static synthetic access$9102(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 7065
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->signature_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$9202(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 7065
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->info_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$9302(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;I)I
    .locals 0

    .line 7065
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .line 7078
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7143
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$8300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 7247
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->clientChangeValue_:J

    .line 7248
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->signature_:Lcom/google/protobuf/ByteString;

    .line 7249
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->info_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .line 7367
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->access$8600()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .line 7370
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7347
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7353
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7317
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7323
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7358
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7364
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7337
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7343
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7327
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7333
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p0
.end method


# virtual methods
.method public getClientChangeValue()J
    .locals 2

    .line 7191
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->clientChangeValue_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 7065
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7065
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .line 7082
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public getInfo()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7243
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->info_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;",
            ">;"
        }
    .end annotation

    .line 7165
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 7286
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 7290
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 7291
    iget-wide v3, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->clientChangeValue_:J

    .line 7292
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7294
    :cond_1
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 7295
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->signature_:Lcom/google/protobuf/ByteString;

    .line 7296
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7298
    :cond_2
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7299
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->info_:Lcom/google/protobuf/ByteString;

    .line 7300
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7302
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7303
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedSerializedSize:I

    return v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7220
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 7089
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasClientChangeValue()Z
    .locals 2

    .line 7180
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasInfo()Z
    .locals 2

    .line 7233
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

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

.method public hasSignature()Z
    .locals 2

    .line 7207
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

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

    .line 7148
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$8400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 7149
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 7253
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 7257
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->hasClientChangeValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7258
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    return v2

    .line 7261
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->hasSignature()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7262
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    return v2

    .line 7265
    :cond_3
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7065
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7065
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7065
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .line 7368
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 2

    .line 7377
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7065
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7065
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .line 7372
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

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

    .line 7311
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

    .line 7271
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getSerializedSize()I

    .line 7272
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 7273
    iget-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->clientChangeValue_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 7275
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 7276
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7278
    :cond_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7279
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->info_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7281
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

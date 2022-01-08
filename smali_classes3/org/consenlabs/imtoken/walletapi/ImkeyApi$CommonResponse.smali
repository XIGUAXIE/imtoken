.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommonResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile result_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1982
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    .line 1990
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1474
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1582
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->memoizedIsInitialized:B

    const-string v0, ""

    .line 1475
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->result_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1494
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;-><init>()V

    if-eqz p2, :cond_4

    .line 1499
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 1503
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    .line 1515
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1509
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1511
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->result_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1526
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1527
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1524
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1529
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1530
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->makeExtensionsImmutable()V

    .line 1531
    throw p1

    .line 1529
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1530
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->makeExtensionsImmutable()V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 1496
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1465
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 1472
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1582
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 1465
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$2800()Z
    .locals 1

    .line 1465
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;)Ljava/lang/Object;
    .locals 0

    .line 1465
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->result_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1465
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->result_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1465
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$3200()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1465
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1465
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1

    .line 1986
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1535
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 1

    .line 1719
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 1

    .line 1722
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1692
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1693
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1699
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1700
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1660
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1666
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1705
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1706
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1712
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1713
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1680
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1681
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1687
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1688
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1649
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1655
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1670
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1676
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;",
            ">;"
        }
    .end annotation

    .line 2001
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1621
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    if-nez v1, :cond_1

    .line 1622
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1624
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    .line 1626
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getResult()Ljava/lang/String;

    move-result-object v1

    .line 1627
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1628
    :cond_2
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1465
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1465
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;
    .locals 1

    .line 2011
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;",
            ">;"
        }
    .end annotation

    .line 2006
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 2

    .line 1553
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->result_:Ljava/lang/Object;

    .line 1554
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1555
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1557
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1559
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1560
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->result_:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1570
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->result_:Ljava/lang/Object;

    .line 1571
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1572
    check-cast v0, Ljava/lang/String;

    .line 1573
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1575
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->result_:Ljava/lang/Object;

    return-object v0

    .line 1578
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1604
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1608
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getResultBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1609
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->result_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1611
    :cond_1
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1612
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1488
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1634
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1635
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 1638
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1640
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 1641
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1642
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1541
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$2500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    .line 1542
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1585
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1589
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1465
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1465
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1465
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 1

    .line 1717
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 2

    .line 1733
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1482
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1465
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1465
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;
    .locals 2

    .line 1726
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1727
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1596
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->getResultBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1597
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->result_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1599
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

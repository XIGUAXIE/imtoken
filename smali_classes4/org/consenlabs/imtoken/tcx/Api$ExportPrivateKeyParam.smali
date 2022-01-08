.class public final Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Api.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExportPrivateKeyParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    }
.end annotation


# static fields
.field public static final CHAINTYPE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MAINADDRESS_FIELD_NUMBER:I = 0x5

.field public static final NETWORK_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSWORD_FIELD_NUMBER:I = 0x2

.field public static final PATH_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private volatile chainType_:Ljava/lang/Object;

.field private volatile id_:Ljava/lang/Object;

.field private volatile mainAddress_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile network_:Ljava/lang/Object;

.field private volatile password_:Ljava/lang/Object;

.field private volatile path_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3841
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    .line 3849
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2564
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2887
    iput-byte v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->memoizedIsInitialized:B

    const-string v0, ""

    .line 2565
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->id_:Ljava/lang/Object;

    .line 2566
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->password_:Ljava/lang/Object;

    .line 2567
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->chainType_:Ljava/lang/Object;

    .line 2568
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->network_:Ljava/lang/Object;

    .line 2569
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->mainAddress_:Ljava/lang/Object;

    .line 2570
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->path_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2589
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;-><init>()V

    if-eqz p2, :cond_9

    .line 2594
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 2598
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    const/16 v4, 0xa

    if-eq v2, v4, :cond_6

    const/16 v4, 0x12

    if-eq v2, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x22

    if-eq v2, v4, :cond_3

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_2

    const/16 v4, 0x32

    if-eq v2, v4, :cond_1

    .line 2640
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2634
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2636
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->path_:Ljava/lang/Object;

    goto :goto_0

    .line 2628
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2630
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->mainAddress_:Ljava/lang/Object;

    goto :goto_0

    .line 2622
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2624
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->network_:Ljava/lang/Object;

    goto :goto_0

    .line 2616
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2618
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->chainType_:Ljava/lang/Object;

    goto :goto_0

    .line 2610
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2612
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->password_:Ljava/lang/Object;

    goto :goto_0

    .line 2604
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2606
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2651
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2652
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2649
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2654
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2655
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->makeExtensionsImmutable()V

    .line 2656
    throw p1

    .line 2654
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2655
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->makeExtensionsImmutable()V

    return-void

    :cond_9
    const/4 p1, 0x0

    .line 2591
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2555
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2562
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2887
    iput-byte p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0

    .line 2555
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$4400()Z
    .locals 1

    .line 2555
    sget-boolean v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4600(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 2555
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2555
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4700(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 2555
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->password_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4702(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2555
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->password_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4800(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 2555
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->chainType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4802(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2555
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->chainType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4900(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 2555
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->network_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4902(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2555
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->network_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5000(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 2555
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->mainAddress_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5002(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2555
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->mainAddress_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 2555
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->path_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5102(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2555
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->path_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 2555
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$5300()Lcom/google/protobuf/Parser;
    .locals 1

    .line 2555
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2555
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2555
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2555
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2555
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2555
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2555
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1

    .line 3845
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2660
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$4000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3074
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3077
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3047
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 3048
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3054
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 3055
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3015
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3021
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3060
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 3061
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3067
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 3068
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3035
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 3036
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3042
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 3043
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3004
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3010
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3025
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3031
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;",
            ">;"
        }
    .end annotation

    .line 3860
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2956
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    if-nez v1, :cond_1

    .line 2957
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2959
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    .line 2961
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getId()Ljava/lang/String;

    move-result-object v1

    .line 2962
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 2963
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 2964
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 2965
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getChainType()Ljava/lang/String;

    move-result-object v1

    .line 2966
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getChainType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 2967
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getNetwork()Ljava/lang/String;

    move-result-object v1

    .line 2968
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 2969
    :cond_5
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getMainAddress()Ljava/lang/String;

    move-result-object v1

    .line 2970
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getMainAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 2971
    :cond_6
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2972
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 2973
    :cond_7
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 2750
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->chainType_:Ljava/lang/Object;

    .line 2751
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2752
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2754
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2756
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2757
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->chainType_:Ljava/lang/Object;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2767
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->chainType_:Ljava/lang/Object;

    .line 2768
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2769
    check-cast v0, Ljava/lang/String;

    .line 2770
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2772
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 2775
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2555
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2555
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;
    .locals 1

    .line 3870
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 2678
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->id_:Ljava/lang/Object;

    .line 2679
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2680
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2682
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2684
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2685
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2695
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->id_:Ljava/lang/Object;

    .line 2696
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2697
    check-cast v0, Ljava/lang/String;

    .line 2698
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2700
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->id_:Ljava/lang/Object;

    return-object v0

    .line 2703
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMainAddress()Ljava/lang/String;
    .locals 2

    .line 2822
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->mainAddress_:Ljava/lang/Object;

    .line 2823
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2824
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2826
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2828
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2829
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->mainAddress_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMainAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2839
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->mainAddress_:Ljava/lang/Object;

    .line 2840
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2841
    check-cast v0, Ljava/lang/String;

    .line 2842
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2844
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->mainAddress_:Ljava/lang/Object;

    return-object v0

    .line 2847
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 2

    .line 2786
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->network_:Ljava/lang/Object;

    .line 2787
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2788
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2790
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2792
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2793
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->network_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2803
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->network_:Ljava/lang/Object;

    .line 2804
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2805
    check-cast v0, Ljava/lang/String;

    .line 2806
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2808
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->network_:Ljava/lang/Object;

    return-object v0

    .line 2811
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
            "Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;",
            ">;"
        }
    .end annotation

    .line 3865
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .line 2714
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->password_:Ljava/lang/Object;

    .line 2715
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2716
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2718
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2720
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2721
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->password_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2731
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->password_:Ljava/lang/Object;

    .line 2732
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2733
    check-cast v0, Ljava/lang/String;

    .line 2734
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2736
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->password_:Ljava/lang/Object;

    return-object v0

    .line 2739
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 2858
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->path_:Ljava/lang/Object;

    .line 2859
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2860
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2862
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2864
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2865
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->path_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2875
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->path_:Ljava/lang/Object;

    .line 2876
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2877
    check-cast v0, Ljava/lang/String;

    .line 2878
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2880
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->path_:Ljava/lang/Object;

    return-object v0

    .line 2883
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2924
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2928
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 2929
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->id_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2931
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 2932
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->password_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2934
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 2935
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->chainType_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2937
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 2938
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->network_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2940
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getMainAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 2941
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->mainAddress_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2943
    :cond_5
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 2944
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->path_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2946
    :cond_6
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2947
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 2583
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2979
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2980
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2983
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 2985
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 2987
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 2989
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getChainType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 2991
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 2993
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getMainAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 2995
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 2996
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2997
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2666
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$4100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    const-class v2, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    .line 2667
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 2890
    iget-byte v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2894
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2555
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2555
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2555
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 1

    .line 3072
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->newBuilder()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 2

    .line 3088
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/Api$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 2577
    new-instance p1, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2555
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2555
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;
    .locals 2

    .line 3081
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 3082
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/Api$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/Api$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam$Builder;

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

    .line 2901
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2902
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2904
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 2905
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->password_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2907
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 2908
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->chainType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2910
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 2911
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->network_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2913
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getMainAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 2914
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->mainAddress_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2916
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 2917
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->path_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2919
    :cond_5
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

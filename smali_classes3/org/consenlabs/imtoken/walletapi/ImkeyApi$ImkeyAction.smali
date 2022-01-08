.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImkeyAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

.field public static final METHOD_FIELD_NUMBER:I = 0x1

.field public static final PARAM_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile method_:Ljava/lang/Object;

.field private param_:Lcom/google/protobuf/Any;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 765
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    .line 773
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 212
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->memoizedIsInitialized:B

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->method_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 93
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_5

    .line 97
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    const/16 v5, 0xa

    if-eq v3, v5, :cond_3

    const/16 v5, 0x12

    if-eq v3, v5, :cond_1

    .line 122
    invoke-virtual {p0, p1, v1, p2, v3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 110
    :cond_1
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->param_:Lcom/google/protobuf/Any;

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->param_:Lcom/google/protobuf/Any;

    invoke-virtual {v3}, Lcom/google/protobuf/Any;->toBuilder()Lcom/google/protobuf/Any$Builder;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 113
    :goto_1
    invoke-static {}, Lcom/google/protobuf/Any;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Any;

    iput-object v4, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->param_:Lcom/google/protobuf/Any;

    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {v3, v4}, Lcom/google/protobuf/Any$Builder;->mergeFrom(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$Builder;

    .line 116
    invoke-virtual {v3}, Lcom/google/protobuf/Any$Builder;->buildPartial()Lcom/google/protobuf/Any;

    move-result-object v3

    iput-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->param_:Lcom/google/protobuf/Any;

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 105
    iput-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->method_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 133
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 134
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 131
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 137
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->makeExtensionsImmutable()V

    .line 138
    throw p1

    .line 136
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 137
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->makeExtensionsImmutable()V

    return-void

    .line 90
    :cond_6
    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 66
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 212
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 59
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;)Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->method_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->method_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->param_:Lcom/google/protobuf/Any;

    return-object p1
.end method

.method static synthetic access$800(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$900()Lcom/google/protobuf/Parser;
    .locals 1

    .line 59
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1

    .line 769
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 142
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;
    .locals 1

    .line 365
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;
    .locals 1

    .line 368
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 339
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 346
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 306
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 312
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 352
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 359
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 327
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 334
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 295
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 301
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 316
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 322
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;",
            ">;"
        }
    .end annotation

    .line 784
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 258
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    if-nez v1, :cond_1

    .line 259
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 261
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    .line 263
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 265
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->hasParam()Z

    move-result v1

    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->hasParam()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 266
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->hasParam()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 267
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v1

    .line 268
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 270
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;
    .locals 1

    .line 794
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->method_:Ljava/lang/Object;

    .line 161
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 164
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 166
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 167
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->method_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->method_:Ljava/lang/Object;

    .line 178
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 179
    check-cast v0, Ljava/lang/String;

    .line 180
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->method_:Ljava/lang/Object;

    return-object v0

    .line 185
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParam()Lcom/google/protobuf/Any;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->param_:Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParamOrBuilder()Lcom/google/protobuf/AnyOrBuilder;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;",
            ">;"
        }
    .end annotation

    .line 789
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 237
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getMethodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 242
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->method_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_1
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->param_:Lcom/google/protobuf/Any;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 246
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_2
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasParam()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->param_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 276
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 277
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 280
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 282
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->hasParam()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 285
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Any;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 287
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 288
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 148
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 215
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 219
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;
    .locals 1

    .line 363
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;
    .locals 2

    .line 379
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 76
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;
    .locals 2

    .line 372
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 373
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction$Builder;

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

    .line 226
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getMethodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 227
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->method_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->param_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 230
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 232
    :cond_1
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

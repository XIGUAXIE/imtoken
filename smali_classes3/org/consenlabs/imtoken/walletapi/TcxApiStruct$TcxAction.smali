.class public final Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "TcxApiStruct.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TcxAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

.field public static final METHOD_FIELD_NUMBER:I = 0x1

.field public static final PARAM_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;",
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

    .line 766
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    .line 774
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 213
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->memoizedIsInitialized:B

    const-string v0, ""

    .line 70
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->method_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 94
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_5

    .line 98
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    const/16 v5, 0xa

    if-eq v3, v5, :cond_3

    const/16 v5, 0x12

    if-eq v3, v5, :cond_1

    .line 123
    invoke-virtual {p0, p1, v1, p2, v3}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 111
    :cond_1
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->param_:Lcom/google/protobuf/Any;

    if-eqz v3, :cond_2

    .line 112
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->param_:Lcom/google/protobuf/Any;

    invoke-virtual {v3}, Lcom/google/protobuf/Any;->toBuilder()Lcom/google/protobuf/Any$Builder;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 114
    :goto_1
    invoke-static {}, Lcom/google/protobuf/Any;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Any;

    iput-object v4, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->param_:Lcom/google/protobuf/Any;

    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {v3, v4}, Lcom/google/protobuf/Any$Builder;->mergeFrom(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$Builder;

    .line 117
    invoke-virtual {v3}, Lcom/google/protobuf/Any$Builder;->buildPartial()Lcom/google/protobuf/Any;

    move-result-object v3

    iput-object v3, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->param_:Lcom/google/protobuf/Any;

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 106
    iput-object v3, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->method_:Ljava/lang/Object;
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

    .line 134
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 135
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 132
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :goto_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 138
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->makeExtensionsImmutable()V

    .line 139
    throw p1

    .line 137
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 138
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->makeExtensionsImmutable()V

    return-void

    .line 91
    :cond_6
    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 67
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 213
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 60
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 60
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;)Ljava/lang/Object;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->method_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->method_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->param_:Lcom/google/protobuf/Any;

    return-object p1
.end method

.method static synthetic access$800(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$900()Lcom/google/protobuf/Parser;
    .locals 1

    .line 60
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1

    .line 770
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 143
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 1

    .line 366
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 1

    .line 369
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 340
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 347
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 307
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 313
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 353
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 360
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 328
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 335
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 296
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 302
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 317
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 323
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;",
            ">;"
        }
    .end annotation

    .line 785
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 259
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    if-nez v1, :cond_1

    .line 260
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 262
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    .line 264
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 266
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->hasParam()Z

    move-result v1

    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->hasParam()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 267
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->hasParam()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 268
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v1

    .line 269
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 271
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;
    .locals 1

    .line 795
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->method_:Ljava/lang/Object;

    .line 162
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 165
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 167
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 168
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->method_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->method_:Ljava/lang/Object;

    .line 179
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 180
    check-cast v0, Ljava/lang/String;

    .line 181
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 183
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->method_:Ljava/lang/Object;

    return-object v0

    .line 186
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParam()Lcom/google/protobuf/Any;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->param_:Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParamOrBuilder()Lcom/google/protobuf/AnyOrBuilder;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;",
            ">;"
        }
    .end annotation

    .line 790
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 238
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getMethodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 243
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->method_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_1
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->param_:Lcom/google/protobuf/Any;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_2
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasParam()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->param_:Lcom/google/protobuf/Any;

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

    .line 277
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 278
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 281
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 283
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->hasParam()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 286
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Any;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 288
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 149
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 216
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 220
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 1

    .line 364
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->newBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 2

    .line 380
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 77
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;
    .locals 2

    .line 373
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 374
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction$Builder;

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

    .line 227
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getMethodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 228
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->method_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->param_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 231
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->getParam()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 233
    :cond_1
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$TcxAction;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

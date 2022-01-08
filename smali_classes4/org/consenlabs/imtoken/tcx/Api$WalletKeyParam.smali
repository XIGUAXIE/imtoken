.class public final Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Api.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WalletKeyParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSWORD_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile password_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4569
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    .line 4577
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3922
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 4073
    iput-byte v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->memoizedIsInitialized:B

    const-string v0, ""

    .line 3923
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->id_:Ljava/lang/Object;

    .line 3924
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->password_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3943
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;-><init>()V

    if-eqz p2, :cond_5

    .line 3948
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 3952
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 3970
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3964
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3966
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->password_:Ljava/lang/Object;

    goto :goto_0

    .line 3958
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3960
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->id_:Ljava/lang/Object;
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

    .line 3981
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3982
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3979
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3984
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3985
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->makeExtensionsImmutable()V

    .line 3986
    throw p1

    .line 3984
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3985
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->makeExtensionsImmutable()V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 3945
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3913
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3920
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4073
    iput-byte p1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0

    .line 3913
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$6500()Z
    .locals 1

    .line 3913
    sget-boolean v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6700(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 3913
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6702(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3913
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6800(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 3913
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->password_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6802(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3913
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->password_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6900(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 3913
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$7000()Lcom/google/protobuf/Parser;
    .locals 1

    .line 3913
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3913
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3913
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1

    .line 4573
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3990
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$6100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 1

    .line 4220
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 1

    .line 4223
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4193
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 4194
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4200
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 4201
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4161
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4167
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4206
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 4207
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4213
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 4214
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4181
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 4182
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4188
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 4189
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4150
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4156
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4171
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4177
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;",
            ">;"
        }
    .end annotation

    .line 4588
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4118
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    if-nez v1, :cond_1

    .line 4119
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4121
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    .line 4123
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getId()Ljava/lang/String;

    move-result-object v1

    .line 4124
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 4125
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 4126
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 4127
    :cond_3
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3913
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3913
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;
    .locals 1

    .line 4598
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 4008
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->id_:Ljava/lang/Object;

    .line 4009
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4010
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4012
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4014
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4015
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4025
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->id_:Ljava/lang/Object;

    .line 4026
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4027
    check-cast v0, Ljava/lang/String;

    .line 4028
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4030
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->id_:Ljava/lang/Object;

    return-object v0

    .line 4033
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
            "Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;",
            ">;"
        }
    .end annotation

    .line 4593
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .line 4044
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->password_:Ljava/lang/Object;

    .line 4045
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4046
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4048
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4050
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4051
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->password_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPasswordBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4061
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->password_:Ljava/lang/Object;

    .line 4062
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4063
    check-cast v0, Ljava/lang/String;

    .line 4064
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4066
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->password_:Ljava/lang/Object;

    return-object v0

    .line 4069
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4098
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4102
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 4103
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->id_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4105
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 4106
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->password_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4108
    :cond_2
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4109
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3937
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 4133
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 4134
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 4137
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4139
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4141
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 4142
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4143
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3996
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$6200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    const-class v2, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    .line 3997
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 4076
    iget-byte v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 4080
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3913
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3913
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3913
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 1

    .line 4218
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->newBuilder()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 2

    .line 4234
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/Api$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 3931
    new-instance p1, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3913
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3913
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;
    .locals 2

    .line 4227
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4228
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/Api$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/Api$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;)Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam$Builder;

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

    .line 4087
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4088
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4090
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->getPasswordBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4091
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->password_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4093
    :cond_1
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

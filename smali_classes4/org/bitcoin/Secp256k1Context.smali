.class public Lorg/bitcoin/Secp256k1Context;
.super Ljava/lang/Object;
.source "Secp256k1Context.java"


# static fields
.field private static final context:J

.field private static final enabled:Z

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    const-class v0, Lorg/bitcoin/Secp256k1Context;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoin/Secp256k1Context;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    :try_start_0
    const-string v3, "secp256k1"

    .line 38
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lorg/bitcoin/Secp256k1Context;->secp256k1_init_context()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 44
    sget-object v4, Lorg/bitcoin/Secp256k1Context;->log:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Ljava/security/AccessControlException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 41
    sget-object v4, Lorg/bitcoin/Secp256k1Context;->log:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 47
    :goto_0
    sput-boolean v0, Lorg/bitcoin/Secp256k1Context;->enabled:Z

    .line 48
    sput-wide v1, Lorg/bitcoin/Secp256k1Context;->context:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()J
    .locals 2

    .line 56
    sget-boolean v0, Lorg/bitcoin/Secp256k1Context;->enabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 58
    :cond_0
    sget-wide v0, Lorg/bitcoin/Secp256k1Context;->context:J

    return-wide v0
.end method

.method public static isEnabled()Z
    .locals 1

    .line 52
    sget-boolean v0, Lorg/bitcoin/Secp256k1Context;->enabled:Z

    return v0
.end method

.method private static native secp256k1_init_context()J
.end method

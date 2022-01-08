.class public Lcom/lambdaworks/jni/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lambdaworks/jni/Platform$OS;,
        Lcom/lambdaworks/jni/Platform$Arch;
    }
.end annotation


# instance fields
.field public final arch:Lcom/lambdaworks/jni/Platform$Arch;

.field public final os:Lcom/lambdaworks/jni/Platform$OS;


# direct methods
.method private constructor <init>(Lcom/lambdaworks/jni/Platform$Arch;Lcom/lambdaworks/jni/Platform$OS;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/lambdaworks/jni/Platform;->arch:Lcom/lambdaworks/jni/Platform$Arch;

    .line 46
    iput-object p2, p0, Lcom/lambdaworks/jni/Platform;->os:Lcom/lambdaworks/jni/Platform$OS;

    return-void
.end method

.method public static detect()Lcom/lambdaworks/jni/Platform;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lambdaworks/jni/UnsupportedPlatformException;
        }
    .end annotation

    const-string v0, "os.arch"

    .line 57
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "os.name"

    .line 58
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {}, Lcom/lambdaworks/jni/Platform$Arch;->values()[Lcom/lambdaworks/jni/Platform$Arch;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 61
    iget-object v7, v6, Lcom/lambdaworks/jni/Platform$Arch;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 62
    invoke-static {}, Lcom/lambdaworks/jni/Platform$OS;->values()[Lcom/lambdaworks/jni/Platform$OS;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 63
    iget-object v11, v10, Lcom/lambdaworks/jni/Platform$OS;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 64
    new-instance v0, Lcom/lambdaworks/jni/Platform;

    invoke-direct {v0, v6, v10}, Lcom/lambdaworks/jni/Platform;-><init>(Lcom/lambdaworks/jni/Platform$Arch;Lcom/lambdaworks/jni/Platform$OS;)V

    return-object v0

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "Unsupported platform %s %s"

    .line 70
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/lambdaworks/jni/UnsupportedPlatformException;

    invoke-direct {v1, v0}, Lcom/lambdaworks/jni/UnsupportedPlatformException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

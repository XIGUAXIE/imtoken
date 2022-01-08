.class public final enum Lcom/lambdaworks/jni/Platform$OS;
.super Ljava/lang/Enum;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lambdaworks/jni/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lambdaworks/jni/Platform$OS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lambdaworks/jni/Platform$OS;

.field public static final enum darwin:Lcom/lambdaworks/jni/Platform$OS;

.field public static final enum freebsd:Lcom/lambdaworks/jni/Platform$OS;

.field public static final enum linux:Lcom/lambdaworks/jni/Platform$OS;


# instance fields
.field pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lcom/lambdaworks/jni/Platform$OS;

    const/4 v1, 0x0

    const-string v2, "darwin"

    const-string v3, "darwin|mac os x"

    invoke-direct {v0, v2, v1, v3}, Lcom/lambdaworks/jni/Platform$OS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lambdaworks/jni/Platform$OS;->darwin:Lcom/lambdaworks/jni/Platform$OS;

    .line 31
    new-instance v0, Lcom/lambdaworks/jni/Platform$OS;

    const/4 v2, 0x1

    const-string v3, "freebsd"

    invoke-direct {v0, v3, v2, v3}, Lcom/lambdaworks/jni/Platform$OS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lambdaworks/jni/Platform$OS;->freebsd:Lcom/lambdaworks/jni/Platform$OS;

    .line 32
    new-instance v0, Lcom/lambdaworks/jni/Platform$OS;

    const/4 v3, 0x2

    const-string v4, "linux"

    invoke-direct {v0, v4, v3, v4}, Lcom/lambdaworks/jni/Platform$OS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lambdaworks/jni/Platform$OS;->linux:Lcom/lambdaworks/jni/Platform$OS;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/lambdaworks/jni/Platform$OS;

    .line 29
    sget-object v5, Lcom/lambdaworks/jni/Platform$OS;->darwin:Lcom/lambdaworks/jni/Platform$OS;

    aput-object v5, v4, v1

    sget-object v1, Lcom/lambdaworks/jni/Platform$OS;->freebsd:Lcom/lambdaworks/jni/Platform$OS;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/lambdaworks/jni/Platform$OS;->$VALUES:[Lcom/lambdaworks/jni/Platform$OS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\\A"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\\Z"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/lambdaworks/jni/Platform$OS;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lambdaworks/jni/Platform$OS;
    .locals 1

    .line 29
    const-class v0, Lcom/lambdaworks/jni/Platform$OS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lambdaworks/jni/Platform$OS;

    return-object p0
.end method

.method public static values()[Lcom/lambdaworks/jni/Platform$OS;
    .locals 1

    .line 29
    sget-object v0, Lcom/lambdaworks/jni/Platform$OS;->$VALUES:[Lcom/lambdaworks/jni/Platform$OS;

    invoke-virtual {v0}, [Lcom/lambdaworks/jni/Platform$OS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lambdaworks/jni/Platform$OS;

    return-object v0
.end method

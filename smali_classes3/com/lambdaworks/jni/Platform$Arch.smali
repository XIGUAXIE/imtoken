.class public final enum Lcom/lambdaworks/jni/Platform$Arch;
.super Ljava/lang/Enum;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lambdaworks/jni/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Arch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lambdaworks/jni/Platform$Arch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lambdaworks/jni/Platform$Arch;

.field public static final enum x86:Lcom/lambdaworks/jni/Platform$Arch;

.field public static final enum x86_64:Lcom/lambdaworks/jni/Platform$Arch;


# instance fields
.field pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/lambdaworks/jni/Platform$Arch;

    const/4 v1, 0x0

    const-string v2, "x86"

    const-string v3, "x86|i386"

    invoke-direct {v0, v2, v1, v3}, Lcom/lambdaworks/jni/Platform$Arch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lambdaworks/jni/Platform$Arch;->x86:Lcom/lambdaworks/jni/Platform$Arch;

    .line 20
    new-instance v0, Lcom/lambdaworks/jni/Platform$Arch;

    const/4 v2, 0x1

    const-string v3, "x86_64"

    const-string v4, "x86_64|amd64"

    invoke-direct {v0, v3, v2, v4}, Lcom/lambdaworks/jni/Platform$Arch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/lambdaworks/jni/Platform$Arch;->x86_64:Lcom/lambdaworks/jni/Platform$Arch;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/lambdaworks/jni/Platform$Arch;

    .line 18
    sget-object v4, Lcom/lambdaworks/jni/Platform$Arch;->x86:Lcom/lambdaworks/jni/Platform$Arch;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/lambdaworks/jni/Platform$Arch;->$VALUES:[Lcom/lambdaworks/jni/Platform$Arch;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
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

    iput-object p1, p0, Lcom/lambdaworks/jni/Platform$Arch;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lambdaworks/jni/Platform$Arch;
    .locals 1

    .line 18
    const-class v0, Lcom/lambdaworks/jni/Platform$Arch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lambdaworks/jni/Platform$Arch;

    return-object p0
.end method

.method public static values()[Lcom/lambdaworks/jni/Platform$Arch;
    .locals 1

    .line 18
    sget-object v0, Lcom/lambdaworks/jni/Platform$Arch;->$VALUES:[Lcom/lambdaworks/jni/Platform$Arch;

    invoke-virtual {v0}, [Lcom/lambdaworks/jni/Platform$Arch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lambdaworks/jni/Platform$Arch;

    return-object v0
.end method

.class public final enum Lcom/facebook/soloader/MinElf$ISA;
.super Ljava/lang/Enum;
.source "MinElf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/MinElf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ISA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/soloader/MinElf$ISA;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/soloader/MinElf$ISA;

.field public static final enum AARCH64:Lcom/facebook/soloader/MinElf$ISA;

.field public static final enum ARM:Lcom/facebook/soloader/MinElf$ISA;

.field public static final enum NOT_SO:Lcom/facebook/soloader/MinElf$ISA;

.field public static final enum OTHERS:Lcom/facebook/soloader/MinElf$ISA;

.field public static final enum X86:Lcom/facebook/soloader/MinElf$ISA;

.field public static final enum X86_64:Lcom/facebook/soloader/MinElf$ISA;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 36
    new-instance v0, Lcom/facebook/soloader/MinElf$ISA;

    const/4 v1, 0x0

    const-string v2, "NOT_SO"

    const-string v3, "not_so"

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/soloader/MinElf$ISA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/soloader/MinElf$ISA;->NOT_SO:Lcom/facebook/soloader/MinElf$ISA;

    .line 37
    new-instance v0, Lcom/facebook/soloader/MinElf$ISA;

    const/4 v2, 0x1

    const-string v3, "X86"

    const-string/jumbo v4, "x86"

    invoke-direct {v0, v3, v2, v4}, Lcom/facebook/soloader/MinElf$ISA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/soloader/MinElf$ISA;->X86:Lcom/facebook/soloader/MinElf$ISA;

    .line 38
    new-instance v0, Lcom/facebook/soloader/MinElf$ISA;

    const/4 v3, 0x2

    const-string v4, "ARM"

    const-string v5, "armeabi-v7a"

    invoke-direct {v0, v4, v3, v5}, Lcom/facebook/soloader/MinElf$ISA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/soloader/MinElf$ISA;->ARM:Lcom/facebook/soloader/MinElf$ISA;

    .line 39
    new-instance v0, Lcom/facebook/soloader/MinElf$ISA;

    const/4 v4, 0x3

    const-string v5, "X86_64"

    const-string/jumbo v6, "x86_64"

    invoke-direct {v0, v5, v4, v6}, Lcom/facebook/soloader/MinElf$ISA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/soloader/MinElf$ISA;->X86_64:Lcom/facebook/soloader/MinElf$ISA;

    .line 40
    new-instance v0, Lcom/facebook/soloader/MinElf$ISA;

    const/4 v5, 0x4

    const-string v6, "AARCH64"

    const-string v7, "arm64-v8a"

    invoke-direct {v0, v6, v5, v7}, Lcom/facebook/soloader/MinElf$ISA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/soloader/MinElf$ISA;->AARCH64:Lcom/facebook/soloader/MinElf$ISA;

    .line 41
    new-instance v0, Lcom/facebook/soloader/MinElf$ISA;

    const/4 v6, 0x5

    const-string v7, "OTHERS"

    const-string/jumbo v8, "others"

    invoke-direct {v0, v7, v6, v8}, Lcom/facebook/soloader/MinElf$ISA;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/soloader/MinElf$ISA;->OTHERS:Lcom/facebook/soloader/MinElf$ISA;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/facebook/soloader/MinElf$ISA;

    .line 35
    sget-object v8, Lcom/facebook/soloader/MinElf$ISA;->NOT_SO:Lcom/facebook/soloader/MinElf$ISA;

    aput-object v8, v7, v1

    sget-object v1, Lcom/facebook/soloader/MinElf$ISA;->X86:Lcom/facebook/soloader/MinElf$ISA;

    aput-object v1, v7, v2

    sget-object v1, Lcom/facebook/soloader/MinElf$ISA;->ARM:Lcom/facebook/soloader/MinElf$ISA;

    aput-object v1, v7, v3

    sget-object v1, Lcom/facebook/soloader/MinElf$ISA;->X86_64:Lcom/facebook/soloader/MinElf$ISA;

    aput-object v1, v7, v4

    sget-object v1, Lcom/facebook/soloader/MinElf$ISA;->AARCH64:Lcom/facebook/soloader/MinElf$ISA;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/facebook/soloader/MinElf$ISA;->$VALUES:[Lcom/facebook/soloader/MinElf$ISA;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/facebook/soloader/MinElf$ISA;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/soloader/MinElf$ISA;
    .locals 1

    .line 35
    const-class v0, Lcom/facebook/soloader/MinElf$ISA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/soloader/MinElf$ISA;

    return-object p0
.end method

.method public static values()[Lcom/facebook/soloader/MinElf$ISA;
    .locals 1

    .line 35
    sget-object v0, Lcom/facebook/soloader/MinElf$ISA;->$VALUES:[Lcom/facebook/soloader/MinElf$ISA;

    invoke-virtual {v0}, [Lcom/facebook/soloader/MinElf$ISA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/soloader/MinElf$ISA;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/facebook/soloader/MinElf$ISA;->value:Ljava/lang/String;

    return-object v0
.end method

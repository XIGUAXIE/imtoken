.class public final enum Lproguard/ftsafe/b/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lproguard/ftsafe/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lproguard/ftsafe/b/b;

.field public static final enum b:Lproguard/ftsafe/b/b;

.field private static final synthetic d:[Lproguard/ftsafe/b/b;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lproguard/ftsafe/b/b;

    const/4 v1, 0x0

    const-string v2, "BLUETOOTH_CLASSIC"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Lproguard/ftsafe/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/b;->a:Lproguard/ftsafe/b/b;

    new-instance v0, Lproguard/ftsafe/b/b;

    const/4 v2, 0x1

    const-string v3, "BLUETOOTH_LE"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v2, v4}, Lproguard/ftsafe/b/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lproguard/ftsafe/b/b;->b:Lproguard/ftsafe/b/b;

    const/4 v3, 0x2

    new-array v3, v3, [Lproguard/ftsafe/b/b;

    sget-object v4, Lproguard/ftsafe/b/b;->a:Lproguard/ftsafe/b/b;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lproguard/ftsafe/b/b;->d:[Lproguard/ftsafe/b/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lproguard/ftsafe/b/b;->c:I

    iput p3, p0, Lproguard/ftsafe/b/b;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lproguard/ftsafe/b/b;
    .locals 1

    const-class v0, Lproguard/ftsafe/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lproguard/ftsafe/b/b;

    return-object p0
.end method

.method public static values()[Lproguard/ftsafe/b/b;
    .locals 1

    sget-object v0, Lproguard/ftsafe/b/b;->d:[Lproguard/ftsafe/b/b;

    invoke-virtual {v0}, [Lproguard/ftsafe/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lproguard/ftsafe/b/b;

    return-object v0
.end method

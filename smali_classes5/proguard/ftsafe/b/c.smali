.class public final enum Lproguard/ftsafe/b/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lproguard/ftsafe/b/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lproguard/ftsafe/b/c;

.field public static final enum b:Lproguard/ftsafe/b/c;

.field public static final enum c:Lproguard/ftsafe/b/c;

.field private static final synthetic d:[Lproguard/ftsafe/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lproguard/ftsafe/b/c;

    const/4 v1, 0x0

    const-string v2, "CONNECT_CANCEL"

    invoke-direct {v0, v2, v1}, Lproguard/ftsafe/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproguard/ftsafe/b/c;->a:Lproguard/ftsafe/b/c;

    new-instance v0, Lproguard/ftsafe/b/c;

    const/4 v2, 0x1

    const-string v3, "CONNECT_FAIL"

    invoke-direct {v0, v3, v2}, Lproguard/ftsafe/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproguard/ftsafe/b/c;->b:Lproguard/ftsafe/b/c;

    new-instance v0, Lproguard/ftsafe/b/c;

    const/4 v3, 0x2

    const-string v4, "DISCONNECT"

    invoke-direct {v0, v4, v3}, Lproguard/ftsafe/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproguard/ftsafe/b/c;->c:Lproguard/ftsafe/b/c;

    const/4 v4, 0x3

    new-array v4, v4, [Lproguard/ftsafe/b/c;

    sget-object v5, Lproguard/ftsafe/b/c;->a:Lproguard/ftsafe/b/c;

    aput-object v5, v4, v1

    sget-object v1, Lproguard/ftsafe/b/c;->b:Lproguard/ftsafe/b/c;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lproguard/ftsafe/b/c;->d:[Lproguard/ftsafe/b/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lproguard/ftsafe/b/c;
    .locals 1

    const-class v0, Lproguard/ftsafe/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lproguard/ftsafe/b/c;

    return-object p0
.end method

.method public static values()[Lproguard/ftsafe/b/c;
    .locals 1

    sget-object v0, Lproguard/ftsafe/b/c;->d:[Lproguard/ftsafe/b/c;

    invoke-virtual {v0}, [Lproguard/ftsafe/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lproguard/ftsafe/b/c;

    return-object v0
.end method

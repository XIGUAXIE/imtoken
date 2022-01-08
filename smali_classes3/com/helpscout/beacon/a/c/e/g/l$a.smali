.class public final enum Lcom/helpscout/beacon/a/c/e/g/l$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/c/e/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpscout/beacon/a/c/e/g/l$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0019\u0010\u0004\u001a\u00020\u00038\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "com/helpscout/beacon/a/c/e/g/l$a",
        "",
        "Lcom/helpscout/beacon/a/c/e/g/l$a;",
        "",
        "value",
        "I",
        "a",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "POSITIVE",
        "NEUTRAL",
        "NEGATIVE",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpscout/beacon/a/c/e/g/l$a;

.field public static final enum NEGATIVE:Lcom/helpscout/beacon/a/c/e/g/l$a;

.field public static final enum NEUTRAL:Lcom/helpscout/beacon/a/c/e/g/l$a;

.field public static final enum POSITIVE:Lcom/helpscout/beacon/a/c/e/g/l$a;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/helpscout/beacon/a/c/e/g/l$a;

    new-instance v2, Lcom/helpscout/beacon/a/c/e/g/l$a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "POSITIVE"

    invoke-direct {v2, v5, v3, v4}, Lcom/helpscout/beacon/a/c/e/g/l$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/helpscout/beacon/a/c/e/g/l$a;->POSITIVE:Lcom/helpscout/beacon/a/c/e/g/l$a;

    aput-object v2, v1, v3

    new-instance v2, Lcom/helpscout/beacon/a/c/e/g/l$a;

    const/4 v3, 0x2

    const-string v5, "NEUTRAL"

    invoke-direct {v2, v5, v4, v3}, Lcom/helpscout/beacon/a/c/e/g/l$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/helpscout/beacon/a/c/e/g/l$a;->NEUTRAL:Lcom/helpscout/beacon/a/c/e/g/l$a;

    aput-object v2, v1, v4

    new-instance v2, Lcom/helpscout/beacon/a/c/e/g/l$a;

    const-string v4, "NEGATIVE"

    invoke-direct {v2, v4, v3, v0}, Lcom/helpscout/beacon/a/c/e/g/l$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/helpscout/beacon/a/c/e/g/l$a;->NEGATIVE:Lcom/helpscout/beacon/a/c/e/g/l$a;

    aput-object v2, v1, v3

    sput-object v1, Lcom/helpscout/beacon/a/c/e/g/l$a;->$VALUES:[Lcom/helpscout/beacon/a/c/e/g/l$a;

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

    iput p3, p0, Lcom/helpscout/beacon/a/c/e/g/l$a;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpscout/beacon/a/c/e/g/l$a;
    .locals 1

    const-class v0, Lcom/helpscout/beacon/a/c/e/g/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpscout/beacon/a/c/e/g/l$a;

    return-object p0
.end method

.method public static values()[Lcom/helpscout/beacon/a/c/e/g/l$a;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/a/c/e/g/l$a;->$VALUES:[Lcom/helpscout/beacon/a/c/e/g/l$a;

    invoke-virtual {v0}, [Lcom/helpscout/beacon/a/c/e/g/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpscout/beacon/a/c/e/g/l$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/a/c/e/g/l$a;->value:I

    return v0
.end method

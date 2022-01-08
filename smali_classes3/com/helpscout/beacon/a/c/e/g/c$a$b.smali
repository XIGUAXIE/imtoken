.class public final Lcom/helpscout/beacon/a/c/e/g/c$a$b;
.super Lcom/helpscout/beacon/a/c/e/g/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/a/c/e/g/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/helpscout/beacon/a/c/e/g/c$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/c$a$b;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/c/e/g/c$a$b;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/c/e/g/c$a$b;->a:Lcom/helpscout/beacon/a/c/e/g/c$a$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/a/c/e/g/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

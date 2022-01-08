.class public abstract Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;
.super Lcom/helpscout/beacon/internal/presentation/ui/chat/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$h;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$f;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$g;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$j;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$k;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$i;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$b;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$a;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$e;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$c;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b$d;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;->a:I

    iput-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;->b:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$b;->a:I

    return v0
.end method

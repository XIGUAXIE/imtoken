.class public abstract Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;
.super Lcom/helpscout/beacon/internal/presentation/ui/chat/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$b;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$c;,
        Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Z

.field private final d:Z


# direct methods
.method private constructor <init>(IIZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->a:I

    iput p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->b:I

    iput-boolean p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->c:Z

    iput-boolean p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(IIZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;-><init>(IIZZ)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->d:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->b:I

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/e$a;->c:Z

    return v0
.end method

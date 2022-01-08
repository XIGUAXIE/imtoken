.class Lproguard/ftsafe/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lproguard/ftsafe/b/s;


# direct methods
.method constructor <init>(Lproguard/ftsafe/b/s;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/b/t;->a:Lproguard/ftsafe/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lproguard/ftsafe/b/t;->a:Lproguard/ftsafe/b/s;

    iget-object v0, v0, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    new-instance v7, Lproguard/ftsafe/b/u;

    iget-object v1, p0, Lproguard/ftsafe/b/t;->a:Lproguard/ftsafe/b/s;

    iget-object v1, v1, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-static {v1}, Lproguard/ftsafe/b/r;->c(Lproguard/ftsafe/b/r;)I

    move-result v1

    int-to-long v3, v1

    iget-object v1, p0, Lproguard/ftsafe/b/t;->a:Lproguard/ftsafe/b/s;

    iget-object v1, v1, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-static {v1}, Lproguard/ftsafe/b/r;->c(Lproguard/ftsafe/b/r;)I

    move-result v1

    int-to-long v5, v1

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lproguard/ftsafe/b/u;-><init>(Lproguard/ftsafe/b/t;JJ)V

    invoke-virtual {v7}, Lproguard/ftsafe/b/u;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-static {v0, v1}, Lproguard/ftsafe/b/r;->a(Lproguard/ftsafe/b/r;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    return-void
.end method

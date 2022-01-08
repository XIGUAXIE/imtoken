.class Lproguard/ftsafe/i/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lproguard/ftsafe/i/b;


# direct methods
.method constructor <init>(Lproguard/ftsafe/i/b;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/i/c;->a:Lproguard/ftsafe/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/i/c;->a:Lproguard/ftsafe/i/b;

    invoke-static {v0}, Lproguard/ftsafe/i/b;->a(Lproguard/ftsafe/i/b;)V

    return-void
.end method

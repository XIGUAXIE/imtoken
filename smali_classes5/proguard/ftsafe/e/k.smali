.class public final Lproguard/ftsafe/e/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/bluetooth/BluetoothDevice;

.field private b:I

.field private c:Lproguard/ftsafe/b/b;

.field private d:Lproguard/ftsafe/i/a;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproguard/ftsafe/e/k;->a:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public a()Lproguard/ftsafe/e/i;
    .locals 7

    new-instance v6, Lproguard/ftsafe/e/i;

    iget-object v1, p0, Lproguard/ftsafe/e/k;->a:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lproguard/ftsafe/e/k;->c:Lproguard/ftsafe/b/b;

    iget v3, p0, Lproguard/ftsafe/e/k;->b:I

    iget-object v4, p0, Lproguard/ftsafe/e/k;->d:Lproguard/ftsafe/i/a;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lproguard/ftsafe/e/i;-><init>(Landroid/bluetooth/BluetoothDevice;Lproguard/ftsafe/b/b;ILproguard/ftsafe/i/a;Lproguard/ftsafe/e/j;)V

    return-object v6
.end method

.method public a(I)Lproguard/ftsafe/e/k;
    .locals 0

    iput p1, p0, Lproguard/ftsafe/e/k;->b:I

    return-object p0
.end method

.method public a(Lproguard/ftsafe/b/b;)Lproguard/ftsafe/e/k;
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/e/k;->c:Lproguard/ftsafe/b/b;

    return-object p0
.end method

.method public a(Lproguard/ftsafe/i/a;)Lproguard/ftsafe/e/k;
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/e/k;->d:Lproguard/ftsafe/i/a;

    return-object p0
.end method

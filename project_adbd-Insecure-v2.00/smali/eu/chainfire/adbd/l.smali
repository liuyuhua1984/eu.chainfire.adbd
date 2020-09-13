.class final Leu/chainfire/adbd/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leu/chainfire/adbd/j;


# direct methods
.method constructor <init>(Leu/chainfire/adbd/j;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/adbd/l;->a:Leu/chainfire/adbd/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/adbd/l;->a:Leu/chainfire/adbd/j;

    invoke-static {v0}, Leu/chainfire/adbd/j;->a(Leu/chainfire/adbd/j;)Leu/chainfire/adbd/MainActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/adbd/MainActivity;->e(Leu/chainfire/adbd/MainActivity;)V

    return-void
.end method

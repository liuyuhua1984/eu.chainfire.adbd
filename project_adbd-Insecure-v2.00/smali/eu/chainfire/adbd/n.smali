.class final Leu/chainfire/adbd/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/adbd/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/adbd/MainActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/adbd/n;->a:Leu/chainfire/adbd/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Leu/chainfire/adbd/n;->a:Leu/chainfire/adbd/MainActivity;

    invoke-static {v0}, Leu/chainfire/adbd/MainActivity;->f(Leu/chainfire/adbd/MainActivity;)V

    const/4 v0, 0x0

    return v0
.end method

unit FMX.RegisterComponents;

interface

procedure Register;

implementation

uses
  System.Classes, FMX.Material.Paper, FMX.Material.ZIndex, FMX.Material.ZIndex.Editor, DesignIntf, FMX.Types,
  FMX.Material.Card, FMX.Material.Avatar, FMX.Material.Badge;

procedure Register;
begin
  RegisterComponents('HashLoad - Material', [
    TMaterialPaper,
    TMaterialCard,
    TMaterialAvatar,
    TMaterialBadge
  ]);

  RegisterPropertyEditor(TypeInfo(TElevation), System.Classes.TPersistent, '', TElevationProperty);
  RegisterPropertyEditor(TypeInfo(TElevation), FMX.Types.TFmxObject, '', TElevationProperty);
end;

end.